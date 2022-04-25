
import 'package:flutter/material.dart';
import 'package:test_project/utils/colors.dart';

class mainbtn_mail extends StatelessWidget {
  const mainbtn_mail({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right:1.0),
      child: Stack(
          fit: StackFit.loose,
          alignment: AlignmentDirectional.center,
          children: [
            Container(
              height: 150,
              width: 116,
              decoration: BoxDecoration(
                color: homePageButtonColor,
                borderRadius: BorderRadius.circular(10.0)) ,
            ),
            Positioned(
              top: -20,
              child: Image.asset(
                'assets/images/Grumpy_mail.png',
                height: 50,
                width: 50,
              ),
            ),
            Positioned(
                bottom: 12,
                child: Text(
                  "小矮人信箱",
                style: TextStyle(color: Color(0xFF6F4031),fontWeight: FontWeight.bold),
                ),)
          ]),
    );
  }
}
