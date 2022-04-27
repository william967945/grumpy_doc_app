import 'package:flutter/material.dart';

class MainBtnShop extends StatelessWidget {
   MainBtnShop({
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
              color: Colors.yellow,
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
        ]);
  }
}