import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_project/controllers/getController.dart';
import 'package:test_project/pages/home/local_widgets/mainFunctionWidget.dart';
import 'local_widgets/btn_Doc.dart';
import 'local_widgets/btn_Grumpy.dart';

class ChooseGDBtn extends StatelessWidget {
  ChooseGDBtn({
    Key? key,
  }) : super(key: key);

  final GetController c = Get.put(GetController());

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
                      c.pageChange(MainFunctionWidget());
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
        BtnGrumpy(),
        // Doc button
        BtnDoc(),
      ],
    );
  }
}
