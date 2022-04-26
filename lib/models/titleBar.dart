import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleBar extends StatelessWidget {
  const TitleBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      alignment: Alignment.bottomCenter,
      //color: Colors.blue,
      child: Text(
        "Grumpy & Doc",
        textAlign: TextAlign.center,
        style:
            GoogleFonts.odorMeanChey(fontSize: 20, color: Colors.white),
      ),
    );
  }
}