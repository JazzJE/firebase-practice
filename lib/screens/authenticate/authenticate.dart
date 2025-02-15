import 'package:flutter/material.dart';
import 'package:my_first_project/screens/authenticate/register.dart';
import 'package:my_first_project/screens/authenticate/sign_in.dart';

class Authenticate extends StatefulWidget {
  const Authenticate({super.key});

  @override
  State<Authenticate> createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {

  bool showSignIn = true;
  void toggleView() => setState(() => showSignIn = !showSignIn);

  @override
  Widget build(BuildContext context) {
    if (showSignIn) {
      return SignIn(switchWidget: toggleView);
    } else {
      return Register(switchWidget: toggleView);
    }
  }
}