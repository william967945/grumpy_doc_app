import 'package:flutter/material.dart';
import 'package:test_project/pages/homepage.dart';
import 'package:test_project/utils/colors.dart';



void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  // Create UI with local view and remote view
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: mainThemeColor,
      ),
      home: HomePage(),
    );
  }
}
