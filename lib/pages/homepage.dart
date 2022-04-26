import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_project/controllers/getController.dart';
import 'package:test_project/models/titleBar.dart';
import 'package:test_project/models/userInfoRow.dart';

const TextStyle _textStyle = TextStyle(
  fontSize: 40,
  fontWeight: FontWeight.bold,
  letterSpacing: 2,
  fontStyle: FontStyle.italic,
);

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  List<Widget> pages = const [
    Text('phone', style: _textStyle),
    Text('home', style: _textStyle),
    Text('person', style: _textStyle),
  ];
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
      bottomNavigationBar: bottomNavigationBar(),
    );
  }


  // bottomNavigationBar
  Padding bottomNavigationBar() {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 10.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50.0),
        child: NavigationBar(
          backgroundColor: Colors.white,
          labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
          height: 60,
          selectedIndex: _currentIndex,
          onDestinationSelected: (int newIndex) {
            setState(() {
              _currentIndex = newIndex;
            });
          },
          destinations: const [
            NavigationDestination(
              selectedIcon: Icon(Icons.telegram_rounded),
              icon: Icon(Icons.telegram_outlined),
              label: 'phone',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.home_filled),
              icon: Icon(Icons.home_outlined),
              label: 'home',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.info_rounded),
              icon: Icon(Icons.info_outlined),
              label: 'profile',
            ),
          ],
        ),
      ),
    );
  }
}
