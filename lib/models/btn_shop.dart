
import 'package:flutter/material.dart';
import 'package:test_project/utils/colors.dart';

class mainbtn_shop extends StatelessWidget {
  const mainbtn_shop({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
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
            top: 10,
            child: Image.asset(
              'assets/images/Grumpy_mail.png',
              height: 100,
              width: 100,
            ),
          ),
          Positioned(
              bottom: 12,
              child: Text(
                "小矮人商店",
              style: TextStyle(color: Color(0xFF6F4031),fontWeight: FontWeight.bold),
              ),)
        ]);
  }
}
