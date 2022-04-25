import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_project/models/btn_mail.dart';
import 'package:test_project/models/btn_mainCall.dart';
import 'package:test_project/models/btn_shop.dart';
import 'package:test_project/utils/colors.dart';

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
            Container(
              height: 100,
              alignment: Alignment.bottomCenter,
              //color: Colors.blue,
              child: Text(
                "Grumpy & Doc",
                textAlign: TextAlign.center,
                style:
                    GoogleFonts.odorMeanChey(fontSize: 20, color: Colors.white),
              ),
            ),
            Container(
              height: 70,
              color: Colors.green,
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Expanded(
                    child: Container(
                  color: Colors.orange,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "今日已撥打0次",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.diamond,
                              color: Colors.white,
                            ),
                            Text(
                              "5.0",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )),
                Expanded(
                    child: Container(
                  color: Colors.pink,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.logo_dev),
                          Text("1級新手Doc"),
                          Icon(Icons.arrow_drop_down_rounded)
                        ],
                      ),
                      // for notification
                      Row(
                        children: [],
                      )
                    ],
                  ),
                )),
              ]),
            ),
            Container(
              height: 270,
              width: 500,
              //color: Colors.yellow,
              child: Center(
                child: mainbtn_homepage(),
              ),
            ),
            Container(
                height: 160,
                width: 500,
                color: Colors.purple,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right:18.0),
                      child: mainbtn_shop(),
                    ),
                    mainbtn_mail(),
                  ],
                )),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
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
      ),
    );
  }
}
