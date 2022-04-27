import 'package:flutter/material.dart';

class BtnDoc extends StatelessWidget {
  const BtnDoc({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
      width: 500,
      //color: Colors.purple,
      child: Center(
        child: TextButton(
          style: TextButton.styleFrom(padding: EdgeInsets.zero),
          onPressed: () {
            print("this is Doc button!");
          },
          child: Stack(
              fit: StackFit.loose,
              alignment: AlignmentDirectional.center,
              children: [
                Container(
                  height: 170,
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
                        color: Color(0xFF6F4031), fontWeight: FontWeight.bold),
                  ),
                ),
                Positioned(
                  left: 20,
                  bottom: 60,
                  child: Text(
                    "[傾聽者模式]",
                    style: TextStyle(
                        color: Color(0xFF6F4031), fontWeight: FontWeight.bold),
                  ),
                )
              ]),
        ),
      ),
    );
  }
}
