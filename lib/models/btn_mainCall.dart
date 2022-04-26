
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_project/controllers/getController.dart';
import 'package:test_project/pages/choose_gd.dart';
import 'package:test_project/utils/colors.dart';

class MainbtnHomepage extends StatelessWidget {
   MainbtnHomepage({
    Key? key,
  }) : super(key: key);

  final GetController c = Get.put(GetController());


  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        print("Go to choose_gd.dart");
        c.pageChange(ChooseGDBtn());
      },
      child: Stack(
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
              top: 0,
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
          ]),
    );
  }
}


