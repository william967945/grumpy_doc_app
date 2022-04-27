import 'package:flutter/material.dart';
import 'package:test_project/pages/home/local_widgets/btn_mail.dart';
import 'package:test_project/pages/home/local_widgets/btn_mainCall.dart';
import 'package:test_project/pages/home/local_widgets/btn_shop.dart';

class MainFunctionWidget extends StatelessWidget {
  const MainFunctionWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 270,
          width: 500,
          //color: Colors.yellow,
          child: Center(
            child: MainbtnCall(), // turn to choose_gd.dart
          ),
        ),
        Container(
            height: 160,
            width: 500,
            //color: Colors.purple,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  child: MainBtnShop(),
                  onPressed: () {},
                ),
                TextButton(onPressed: () {}, child: MainBtnMail()),
              ],
            )),
      ],
    );
  }
}