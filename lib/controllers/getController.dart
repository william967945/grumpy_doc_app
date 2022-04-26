import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_project/pages/homepage.dart';

class GetController extends GetxController {

  
  Widget pageType = const MainFunctionBtn();

  pageChange(Widget page) {
    pageType = page;
    update(); // when changing the widget on the UI
    // we need to use update() method to always updating the current UI
  }
}