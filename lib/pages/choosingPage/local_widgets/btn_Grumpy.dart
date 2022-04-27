import 'package:flutter/material.dart';

class BtnGrumpy extends StatelessWidget {
  const BtnGrumpy({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}