
import 'package:flutter/material.dart';
import 'package:test_project/utils/colors.dart';

class mainbtn_homepage extends StatelessWidget {
  const mainbtn_homepage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
        fit: StackFit.loose,
        alignment: AlignmentDirectional.center,
        children: [
          Container(
            height: 250,
            width: 250,
            decoration: BoxDecoration(
              color: homePageButtonColor,
              borderRadius: BorderRadius.circular(10.0)) ,
          ),
          Positioned(
            top: -20,
            child: Image.asset(
              'assets/images/GP.png',
              height: 220,
              width: 220,
            ),
          ),
          Positioned(
              bottom: 30,
              child: Text(
                "開始你的語音通話",
              style: TextStyle(color: Color(0xFF6F4031),fontWeight: FontWeight.bold),
              ),)
        ]);
  }
}


