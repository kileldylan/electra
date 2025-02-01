// ignore_for_file: library_private_types_in_public_api, use_build_context_synchronously

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../services/supabase_auth.dart';
import 'login_page.dart'; // Import your LoginPage

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final SupabaseAuthService _authService = SupabaseAuthService();
  final _formKey = GlobalKey<FormState>();

  late String _name;
  late String _nationalId;
  late String _email;
  bool _isEditing = false;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _loadUserData();
  }

  /// Load user data from Supabase
  Future<void> _loadUserData() async {
    setState(() {
      _isLoading = true;
    });

    final user = _authService.getCurrentUser();
    if (user != null) {
      if (kDebugMode) {
        if (kDebugMode) {
          print('Fetching profile data for user: ${user.id}');
        }
      }

      try {
        final response = await _authService.supabase
            .from('profiles')
            .select()
            .eq('id', user.id)
            .single();

        if (kDebugMode) {
          print('Profile data fetched: $response');
        }

        setState(() {
          _name = response['name'];
          _nationalId = response['national_id'];
          _email = response['email'];
          _isLoading = false;
        });
      } catch (e) {
        if (kDebugMode) {
          print('Failed to fetch profile data: $e');
        }
        setState(() {
          _isLoading = false;
        });
      }
    }
  }

  /// Update user profile data
  Future<void> _updateProfile() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      setState(() {
        _isLoading = true;
      });

      final user = _authService.getCurrentUser();
      if (user != null) {
        try {
          await _authService.supabase.from('profiles').update({
            'name': _name,
            'national_id': _nationalId,
          }).eq('id', user.id);

          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Profile updated successfully!')),
          );

          setState(() {
            _isEditing = false;
          });
        } catch (e) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Failed to update profile: $e')),
          );
        } finally {
          setState(() {
            _isLoading = false;
          });
        }
      }
    }
  }

  /// Log out the user
  Future<void> _logout() async {
    await _authService.signOut();
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const LoginPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: _logout,
          ),
        ],
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : Padding(
              padding: const EdgeInsets.all(16.0),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    // Name Field
                    TextFormField(
                      initialValue: _name,
                      decoration: const InputDecoration(labelText: 'Name'),
                      enabled: _isEditing,
                      validator: (value) => value == null || value.isEmpty
                          ? 'Name is required'
                          : null,
                      onSaved: (value) => _name = value!,
                    ),
                    const SizedBox(height: 20),

                    // National ID Field
                    TextFormField(
                      initialValue: _nationalId,
                      decoration:
                          const InputDecoration(labelText: 'National ID'),
                      enabled: _isEditing,
                      validator: (value) => value == null || value.isEmpty
                          ? 'National ID is required'
                          : null,
                      onSaved: (value) => _nationalId = value!,
                    ),
                    const SizedBox(height: 20),

                    // Email Field (Read-only)
                    TextFormField(
                      initialValue: _email,
                      decoration: const InputDecoration(labelText: 'Email'),
                      readOnly: true,
                    ),
                    const SizedBox(height: 20),

                    // Edit/Save Button
                    _isEditing
                        ? ElevatedButton(
                            onPressed: _updateProfile,
                            child: const Text('Save'),
                          )
                        : ElevatedButton(
                            onPressed: () {
                              setState(() {
                                _isEditing = true;
                              });
                            },
                            child: const Text('Edit Profile'),
                          ),
                  ],
                ),
              ),
            ),
    );
  }
}
