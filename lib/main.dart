import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_project/pages/home/homepage.dart';
import 'package:test_project/utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';

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

  // Cree UI with local view and remote view
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: mainThemeColor,
        textTheme: GoogleFonts.odorMeanCheyTextTheme(Theme.of(context).textTheme)
      ),
      home: HomePage(),
    );
  }
}
