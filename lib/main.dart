// ignore_for_file: library_private_types_in_public_api

import 'package:electra/services/supabase_auth.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:uni_links/uni_links.dart';
import 'dart:async';
import 'screens/home_page.dart';
import 'screens/login_page.dart';
import 'screens/profile_page.dart';
import 'screens/register_page.dart';
import 'screens/voting_page.dart';
import 'screens/reset_password.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://qfjehruifawsckludzqa.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InFmamVocnVpZmF3c2NrbHVkenFhIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzgzMjgwNDYsImV4cCI6MjA1MzkwNDA0Nn0.m9JMmFXYKOBy2VJlwDhj0NK5b1KRWnPGwijnvXaRSDs',
  );

  final SupabaseAuthService authService = SupabaseAuthService();
  final bool isLoggedIn = authService.isLoggedIn();

  runApp(MyApp(isLoggedIn: isLoggedIn));
}

class MyApp extends StatefulWidget {
  final bool isLoggedIn;
  const MyApp({super.key, required this.isLoggedIn});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  StreamSubscription? _sub;

  @override
  void initState() {
    super.initState();
    _handleIncomingLinks();
  }

  void _handleIncomingLinks() async {
    // Handle initial link when app is launched
    final Uri? initialUri = await getInitialUri();
    if (initialUri != null) {
      _handleDeepLink(initialUri);
    }

    // Handle subsequent links while app is open
    _sub = uriLinkStream.listen((Uri? uri) {
      if (uri != null) {
        _handleDeepLink(uri);
      }
    }, onError: (err) {
      debugPrint('Error receiving link: $err');
    });
  }

  void _handleDeepLink(Uri uri) {
    debugPrint('Handling deep link: ${uri.toString()}');

    if (uri.path.contains('reset-password')) {
      final String? token = uri.queryParameters['token']; // Extract token

      if (token != null) {
        debugPrint('Extracted token: $token');
        Navigator.pushNamed(
          context,
          '/reset-password',
          arguments: token, // Pass token to reset password page
        );
      } else {
        debugPrint('Error: No token found in deep link');
      }
    }
  }

  @override
  void dispose() {
    _sub?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Electra App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: widget.isLoggedIn ? '/home' : '/login',
      routes: {
        '/login': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
        '/home': (context) => const ElectraHomePage(),
        '/voting': (context) => const VotingPage(),
        '/profile': (context) => const ProfilePage(),
        '/reset-password': (context) => const ResetPasswordPage(),
      },
    );
  }
}
