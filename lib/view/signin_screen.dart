import 'package:flutter/material.dart';
import '../component/email_password_form.dart';
import '../component/google_sign_in_button.dart';

class SignInScreen extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _onSignInSuccess(BuildContext context) {
    Navigator.pushReplacementNamed(context, '/home');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            EmailPasswordForm(
              emailController: _emailController,
              passwordController: _passwordController,
              onSignInSuccess: () => _onSignInSuccess(context),
            ),
            GoogleSignInButton(
                onSignInSuccess: () => _onSignInSuccess(context)),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/signup');
              },
              child: Text('Sign up'),
            ),
          ],
        ),
      ),
    );
  }
}
