import 'package:flutter/material.dart';
import 'package:my_first_project/screens/home/home.dart';
import 'package:my_first_project/screens/authenticate/authenticate.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    // Return either Home or Authenticate widget
    return Authenticate();
  }
}