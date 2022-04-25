
import 'package:flutter/material.dart';
import 'package:test_project/utils/colors.dart';

class MainBtnMail extends StatelessWidget {
  const MainBtnMail({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right:1.0),
      child: TextButton(
        onPressed: () {
          
        },
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
                top: 10,
                left: 10,
                child: Image.asset(
                  'assets/images/Grumpy_mail.png',
                  height: 106,
                  width: 106,
                ),
              ),
              Positioned(
                  bottom: 12,
                  child: Text(
                    "小矮人信箱",
                  style: TextStyle(color: Color(0xFF6F4031),fontWeight: FontWeight.bold),
                  ),)
            ]),
      ),
    );
  }
}
