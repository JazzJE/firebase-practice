import 'package:flutter/material.dart';
import 'package:my_first_project/services/auth.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  
  final AuthService _authenticator = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        backgroundColor: Colors.brown[400],

        // Elevation removes the drop shadow, as the Scaffold widget is no longer elevated off the screen
        elevation: 0.0,
        title: Text('Sign in to Brew Crew')
      ),
      
      // The actual body of our widget
      body: Container(
        
        // This will make the widget not touch the edges of the screen
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
        child: ElevatedButton(
          child: Text('Sign in anon'),
          onPressed: () async {
            var result = await _authenticator.signInAnon();
            if (result == null) {
              print('error signing in');
            } else {
              print('signed in');
              print(result);
            }
          }
        )
      ),
    );
  }
}