import 'package:flutter/material.dart';

class ChoosingGDpage extends StatelessWidget {
  static const title = 'page A';
  const ChoosingGDpage({Key? key, required String title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: 270,
            width: 500,
            //color: Colors.yellow,
            child: Center(
                //child: mainbtn_homepage(),
                ),
          ),
          Container(
              height: 160,
              width: 500,
              //color: Colors.purple,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //MainBtnShop(),
                  //MainBtnMail(),
                ],
              )),
        ],
      ),
    );
  }
}
