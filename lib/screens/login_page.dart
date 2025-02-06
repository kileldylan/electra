// ignore_for_file: library_private_types_in_public_api, use_build_context_synchronously

import 'package:flutter/material.dart';
import '../services/supabase_auth.dart';
import 'register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final SupabaseAuthService _authService = SupabaseAuthService();
  bool _isLoading = false;

  /// Login function
  Future<void> _login() async {
    setState(() {
      _isLoading = true;
    });

    try {
      final response = await _authService.signIn(
        email: _emailController.text,
        password: _passwordController.text,
      );

      if (response.user != null) {
        // Navigate to the home screen on successful login
        Navigator.pushReplacementNamed(context, '/home');
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(e.toString())),
      );
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  /// Forgot Password function
  Future<void> _forgotPassword() async {
    String? email;

    await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Reset Password"),
        content: TextField(
          decoration: const InputDecoration(labelText: "Enter your email"),
          onChanged: (value) => email = value,
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Cancel"),
          ),
          TextButton(
            onPressed: () async {
              if (email != null && email!.contains("@")) {
                await _sendPasswordReset(email!);
                Navigator.pop(context);
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                      content: Text("Please enter a valid email address")),
                );
              }
            },
            child: const Text("Send Reset Link"),
          ),
        ],
      ),
    );
  }

  /// Sends a password reset email with a custom message
  Future<void> _sendPasswordReset(String email) async {
    try {
      await _authService.supabase.auth.resetPasswordForEmail(
        email,
        redirectTo:
            "myapp://reset-password", // This tells Supabase to redirect back to your app
      );
      // Change this to your reset page

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            "A password reset email has been sent to $email. Follow the instructions to reset your password.",
          ),
        ),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Error sending reset email: $e")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _passwordController,
              decoration: const InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
            const SizedBox(height: 20),

            // Login Button
            ElevatedButton(
              onPressed: _isLoading ? null : _login,
              child: _isLoading
                  ? const CircularProgressIndicator()
                  : const Text('Login'),
            ),

            const SizedBox(height: 10),

            // Forgot Password Button
            TextButton(
              onPressed: _forgotPassword,
              child: const Text("Forgot Password?"),
            ),

            const SizedBox(height: 20),

            // Register Button
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RegisterPage(),
                  ),
                );
              },
              child: const Text("Don't have an account? Register"),
            ),
          ],
        ),
      ),
    );
  }
}
