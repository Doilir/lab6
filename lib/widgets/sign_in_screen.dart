import 'package:flutter/material.dart';
import 'reset_password_screen.dart';
import 'signup_screen.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  void _dialog(BuildContext context, String text) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(title: const Text('Message'), content: Text(text)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sign In')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              'https://storage.googleapis.com/cms-storage-bucket/6a0d9c9e7f5a3e0d7c4a.png',
              height: 70,
              errorBuilder: (_, __, ___) => const Icon(Icons.flutter_dash, size: 70),
            ),
            const SizedBox(height: 20),
            const TextField(decoration: InputDecoration(labelText: 'Login', border: OutlineInputBorder())),
            const SizedBox(height: 12),
            const TextField(obscureText: true, decoration: InputDecoration(labelText: 'Password', border: OutlineInputBorder())),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => _dialog(context, 'Need to implement login'),
              child: const Text('Login'),
            ),
            OutlinedButton(
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const SignupScreen())),
              child: const Text('Sign up'),
            ),
            TextButton(
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const ResetPasswordScreen())),
              child: const Text('Reset password'),
            ),
          ],
        ),
      ),
    );
  }
}