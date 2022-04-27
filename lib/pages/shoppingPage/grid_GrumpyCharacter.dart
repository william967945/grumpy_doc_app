import 'package:flutter/material.dart';

class GridGrumpyCharacter extends StatelessWidget {
  GridGrumpyCharacter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
      padding: EdgeInsets.zero,),
    
      onPressed: () {
        print("This is a character!");
      },
      child: Stack(
          fit: StackFit.loose,
          alignment: AlignmentDirectional.center,
          children: [
            Container(
              // height: 150,
              // width: 116,
              decoration: BoxDecoration(
                  color: Color(0xFFFFECE0), // parameter
                  borderRadius: BorderRadius.circular(10.0)),
            ),
            Positioned(
              top: -12,
              left: 16,
              child: Image.asset(
                'assets/images/基本Grumpy.png', // parameter
                height: 100,
                width: 100,
              ),
            ),
            Positioned(
              bottom: 8,
              child: Text(
                "Grumpy", // parameter
                style: TextStyle(
                    color: Color(0xFF6F4031), fontWeight: FontWeight.bold, fontSize: 10.0),
              ),
            )
          ]),
    );
  }
}
