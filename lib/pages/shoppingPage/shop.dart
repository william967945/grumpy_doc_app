import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_project/controllers/getController.dart';
import 'package:test_project/pages/home/local_widgets/mainFunctionWidget.dart';
import 'package:test_project/pages/shoppingPage/grid_GrumpyCharacter.dart';

class Shop extends StatelessWidget {
  Shop({
    Key? key,
  }) : super(key: key);

  final GetController c = Get.put(GetController());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 160,
          width: 500,
          color: Colors.orange,
          child: TextButton(
              onPressed: () {
                c.pageChange(MainFunctionWidget());
              },
              child: Container(
                height: 50,
                width: 50,
                color: Colors.purple,
              )),
        ),
        Container(
          height: 270,
          //color: Colors.pink,
          child: GridView.count(
            padding: EdgeInsets.all(30.0),
            crossAxisCount: 3,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
            children: [
              GridGrumpyCharacter(),
              Container(
                // height: 500,
                // width: 50,
                color: Color(0xFFFFECE0),
              ),
              Container(
                // height: 50,
                // width: 50,
                color: Colors.blue[100],
              ),
              Container(
                // height: 50,
                // width: 50,
                color: Colors.blue[200],
              ),
              Container(
                height: 50,
                width: 50,
                color: Colors.blue[300],
              ),
              Container(
                height: 50,
                width: 50,
                color: Colors.blue[400],
              ),
              Container(
                height: 50,
                width: 50,
                color: Colors.blue[500],
              ),
              Container(
                height: 50,
                width: 50,
                color: Colors.blue[600],
              ),
              Container(
                height: 50,
                width: 50,
                color: Colors.blue[700],
              ),
              Container(
                height: 50,
                width: 50,
                color: Colors.blue[800],
              ),
              Container(
                height: 50,
                width: 50,
                color: Colors.blue[900],
              ),
              Container(
                height: 50,
                width: 50,
                color: Colors.green,
              ),
              Container(
                height: 50,
                width: 50,
                color: Colors.purple,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
