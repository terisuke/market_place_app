import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class EmailPasswordForm extends StatelessWidget {
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final Function onSignInSuccess;

  EmailPasswordForm({
    required this.emailController,
    required this.passwordController,
    required this.onSignInSuccess,
  });

  Future<void> _signInWithEmailPassword(BuildContext context) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      onSignInSuccess();
    } catch (e) {
      print(e); // handle error
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextField(
          controller: emailController,
          decoration: InputDecoration(labelText: 'Email'),
        ),
        TextField(
          controller: passwordController,
          decoration: InputDecoration(labelText: 'Password'),
          obscureText: true,
        ),
        ElevatedButton(
          onPressed: () => _signInWithEmailPassword(context),
          child: Text('Login with Email'),
        ),
      ],
    );
  }
}
