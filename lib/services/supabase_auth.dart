import 'package:flutter/foundation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class SupabaseAuthService {
  final SupabaseClient supabase = Supabase.instance.client;

  /// Register a new user and store profile data
  Future<AuthResponse> signUp({
    required String email,
    required String password,
    required String name,
    required String nationalId,
  }) async {
    try {
      // Step 1: Register the user with Supabase Auth
      final AuthResponse response = await supabase.auth.signUp(
        email: email,
        password: password,
      );

      if (response.user == null) {
        throw Exception('Registration failed: No user returned.');
      }

      final userId = response.user!.id;

      // Step 2: Insert user profile data into the profiles table
      // Step 2: Insert user profile data into the profiles table
      final profileResponse = await supabase.from('profiles').insert({
        'id': userId,
        'name': name,
        'national_id': nationalId,
        'email': email,
      }).select();

      if (profileResponse.isEmpty) {
        throw Exception('Profile creation failed: No profile data returned.');
      }

      await Future.delayed(const Duration(
          milliseconds: 500)); // ✅ Ensure DB writes before proceeding

      return response;
    } on AuthException catch (e) {
      throw Exception('Registration failed: ${e.message}');
    } catch (e) {
      throw Exception('An unexpected error occurred: $e');
    }
  }

  /// Sign in user
  Future<AuthResponse> signIn({
    required String email,
    required String password,
  }) async {
    try {
      final response = await supabase.auth.signInWithPassword(
        email: email,
        password: password,
      );

      if (response.user == null) {
        throw Exception('Login failed: No user found.');
      }

      // Save session after login
      await _saveSession(response.session);

      return response;
    } on AuthException catch (e) {
      throw Exception('Login failed: ${e.message}');
    } catch (e) {
      throw Exception('An unexpected error occurred: $e');
    }
  }

  /// Sign out user
  Future<void> signOut() async {
    try {
      await supabase.auth.signOut();
      await clearSession(); // Clear stored session on logout
    } catch (e) {
      throw Exception('Logout failed: $e');
    }
  }

  /// Check if user is logged in
  bool isLoggedIn() {
    return supabase.auth.currentSession != null;
  }

  /// Get the currently signed-in user
  User? getCurrentUser() {
    return supabase.auth.currentUser;
  }

  /// Restore session after app restart
  Future<bool> restoreSession() async {
    final prefs = await SharedPreferences.getInstance();
    final sessionString = prefs.getString('supabase_session');

    if (sessionString != null) {
      try {
        final sessionMap = jsonDecode(sessionString);
        final session = Session.fromJson(sessionMap);
        await supabase.auth.setSession(session!.accessToken);
        return true;
      } catch (e) {
        if (kDebugMode) {
          print('Failed to restore session: $e');
        }
        return false;
      }
    }
    return false;
  }

  /// Save session to local storage
  Future<void> _saveSession(Session? session) async {
    final prefs = await SharedPreferences.getInstance();
    if (session != null) {
      await prefs.setString('supabase_session', jsonEncode(session.toJson()));
    }
  }

  /// Clear saved session from storage
  Future<void> clearSession() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('supabase_session');
  }
}
