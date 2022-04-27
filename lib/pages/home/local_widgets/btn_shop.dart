
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_project/controllers/getController.dart';
import 'package:test_project/pages/shoppingPage/shop.dart';
import 'package:test_project/utils/colors.dart';

class MainBtnShop extends StatelessWidget {
   MainBtnShop({
    Key? key,
  }) : super(key: key);

  final GetController c = Get.put(GetController());


  @override
  Widget build(BuildContext context) {
    return TextButton(
            style: TextButton.styleFrom(padding: EdgeInsets.zero),

      onPressed: () {
        print("Go to shop.dart");
        c.pageChange(Shop());
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
              right: 15,
              child: Image.asset(
                'assets/images/Grumpy.png',
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
          ]),
    );
  }
}
