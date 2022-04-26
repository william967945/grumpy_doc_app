import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_project/controllers/getController.dart';
import 'package:test_project/pages/homepage.dart';

class WidgetTwo extends StatelessWidget {
  WidgetTwo({
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
        // Container(
        //   height: 50,
        //   width: 500,
        //   color: Colors.lime,
        //   child: Row(children: [
        //     IconButton(onPressed: () {}, icon: Icon(Icons.arrow_right)),
        //     Text("選擇本次通話的代表小矮人")
        //   ]),
        // ),
        Container(
          height: 220,
          width: 500,
          //color: Colors.yellow,
          child: Center(
            child: Container(
                height: 50,
                width: 50,
                color: Colors.orange), // turn to choose_gd.dart
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
                  child: Container(
                height: 50,
                width: 50,
                color: Colors.red),
                  onPressed: () {},
                ),
                TextButton(onPressed: () {}, child: Container(
                height: 50,
                width: 50,
                color: Colors.brown),),
              ],
            )),
      ],
    );
  }
}
