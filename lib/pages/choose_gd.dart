import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_project/controllers/getController.dart';
import 'package:test_project/pages/mainFunction.dart';
import 'package:test_project/utils/colors.dart';

class ChooseGDBtn extends StatelessWidget {
  ChooseGDBtn({
    Key? key,
  }) : super(key: key);

  final GetController c = Get.put(GetController());
//* for testing routing function
//
// TextButton(
//                 onPressed: () {
//                   print("go to homepage.dart");
//                   c.pageChange(MainFunctionBtn());
//                 },
//                 child: Container(
//                   height: 50,
//                   width: 50,
//                   color: Colors.orange,
//                 )),

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            height: 50,
            width: 500,
            //color: Colors.lime,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: IconButton(
                    icon: Icon(
                      Icons.keyboard_arrow_left_outlined,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      print("Go to Homepage");
                      c.pageChange(MainFunctionBtn());
                    },
                  ),
                ),
                Expanded(
                    flex: 4,
                    child: Text(
                      "選擇本次通話的代表小矮人",
                      style: TextStyle(color: Colors.white),
                    ))
              ],
            )),

        // Grumpy button
        Container(
          height: 190,
          width: 500,
          //color: Colors.indigo,
          child: Center(
            child: TextButton(
              onPressed: () {
                print("this is Grumpy button!");
              },
              child: Stack(
                  fit: StackFit.loose,
                  alignment: AlignmentDirectional.center,
                  children: [
                    Container(
                      height: 250,
                      width: 250,
                      decoration: BoxDecoration(
                          color: Color(0xFFFFEFE0),
                          borderRadius: BorderRadius.circular(10.0)),
                    ),
                    Positioned(
                      top: 20,
                      right: 120,
                      child: Image.asset(
                        'assets/images/basic_Grumpy.png',
                        height: 120,
                        width: 120,
                      ),
                    ),
                    Positioned(
                      right: 30,
                      bottom: 90,
                      child: Text(
                        "Grumpy",
                        style: TextStyle(
                            color: Color(0xFF6F4031),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Positioned(
                      right: 20,
                      bottom: 60,
                      child: Text(
                        "[訴說者模式]",
                        style: TextStyle(
                            color: Color(0xFF6F4031),
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ]),
            ),
          ),
        ),

        // Doc button
        Container(
          height: 190,
          width: 500,
          //color: Colors.purple,
          child: Center(
            child: TextButton(
              onPressed: () {
                print("this is Doc button!");
              },
              child: Stack(
                  fit: StackFit.loose,
                  alignment: AlignmentDirectional.center,
                  children: [
                    Container(
                      height: 250,
                      width: 250,
                      decoration: BoxDecoration(
                          color: Color(0xFFFFFCE0),
                          borderRadius: BorderRadius.circular(10.0)),
                    ),
                    Positioned(
                      top: 20,
                      right: 20,
                      child: Image.asset(
                        'assets/images/basic_Doc.png',
                        height: 120,
                        width: 120,
                      ),
                    ),
                    Positioned(
                      left: 46,
                      bottom: 90,
                      child: Text(
                        "Doc",
                        style: TextStyle(
                            color: Color(0xFF6F4031),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Positioned(
                      left: 20,
                      bottom: 60,
                      child: Text(
                        "[傾聽者模式]",
                        style: TextStyle(
                            color: Color(0xFF6F4031),
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ]),
            ),
          ),
        ),
      ],
    );
  }
}
