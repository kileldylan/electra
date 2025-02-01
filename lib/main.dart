import 'package:electra/services/supabase_auth.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'screens/home_page.dart';
import 'screens/login_page.dart';
import 'screens/profile_page.dart';
import 'screens/register_page.dart';
import 'screens/voting_page.dart';

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

class MyApp extends StatelessWidget {
  final bool isLoggedIn;
  const MyApp({super.key, required this.isLoggedIn});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Electra App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: isLoggedIn ? '/home' : '/login',
      routes: {
        '/login': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
        '/home': (context) => const ElectraHomePage(),
        '/voting': (context) => const VotingPage(),
        '/profile': (context) => const ProfilePage(),
      },
    );
  }
}
