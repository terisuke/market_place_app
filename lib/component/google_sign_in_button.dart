import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleSignInButton extends StatelessWidget {
  final Function onSignInSuccess;

  GoogleSignInButton({required this.onSignInSuccess});

  Future<void> _signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    if (googleUser != null) {
      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      await FirebaseAuth.instance.signInWithCredential(credential);
      onSignInSuccess();
    }
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: _signInWithGoogle,
      child: Text('Login with Google'),
    );
  }
}
