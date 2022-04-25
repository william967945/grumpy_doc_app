import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
    Text('eco', style: _textStyle),
    Text('home', style: _textStyle),
    Text('person', style: _textStyle),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.bottomCenter,
                color: Colors.blue,
                child: Text(
                  "Grumpy & Doc",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.odorMeanChey(
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: 100,
                color: Colors.green,
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Expanded(child: Container(color: Colors.orange,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("今日已撥打0次"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.diamond),
                            Text("5.0"),
                          ],
                        ),
                      ],
                    ),
                  ),
                  )),
                  Expanded(child: Container(color: Colors.pink)),
                ]),
              ),
            ),
            Container(height: 220, width: 500, color: Colors.yellow),
            Container(height: 132, width: 500, color: Colors.purple),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20.0),
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
                selectedIcon: Icon(Icons.eco),
                icon: Icon(Icons.eco_outlined),
                label: 'eco',
              ),
              NavigationDestination(
                selectedIcon: Icon(Icons.home),
                icon: Icon(Icons.home_outlined),
                label: 'home',
              ),
              NavigationDestination(
                selectedIcon: Icon(Icons.person),
                icon: Icon(Icons.person_outlined),
                label: 'profile',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
