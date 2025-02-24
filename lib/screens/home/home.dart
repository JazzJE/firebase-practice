import 'package:flutter/material.dart';
import 'package:my_first_project/services/auth.dart';

class Home extends StatelessWidget {
  Home({super.key});

  final AuthService _authenticator = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[50],
      appBar: AppBar(
        title: Text('Brew Crew'),
        backgroundColor: Colors.brown[400],
        elevation: 0.0,
        actions: <Widget>[
          TextButton.icon(
            icon: Icon(Icons.person),
            onPressed: () async {
              await _authenticator.signOut();
            },
            label: Text('Logout'),
          )
        ],
      )
    );
  }
}