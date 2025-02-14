import 'package:flutter/material.dart';
import 'package:my_first_project/models/client.dart';
import 'package:my_first_project/screens/authenticate/authenticate.dart';
import 'package:my_first_project/screens/home/home.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {

    final clientAccount = Provider.of<Client?>(context);

    // Return either Home or Authenticate widget
    if (clientAccount == null) {
      return Authenticate();
    }
    else {
      return Home();
    }
  }
}