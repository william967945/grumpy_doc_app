import 'package:flutter/material.dart';
import 'package:test_project/models/buttonNavigationBar.dart';


class Homepage extends StatelessWidget {
  const Homepage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MaterialYou(),
    );
  }
}