import 'package:flutter/material.dart';

class BtnNaviBar extends StatefulWidget {
  BtnNaviBar({
    Key? key,
  }) : super(key: key);

  

  @override
  State<BtnNaviBar> createState() => _BtnNaviBarState();
}

class _BtnNaviBarState extends State<BtnNaviBar> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
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
