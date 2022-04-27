import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_project/controllers/getController.dart';
import 'package:test_project/widgets/btnNaviBar.dart';
import 'package:test_project/widgets/titleBar.dart';
import 'package:test_project/widgets/userInfoRow.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            TitleBar(),
            UserInfoRow(),
            GetBuilder<GetController>(
              init: GetController(),
              builder: (c) {
                return Container(child: c.pageType);
              },
            ),
          ],
        ),
      ),
      ///////
      bottomNavigationBar: BtnNaviBar(),
    );
  }
}
