import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'home.dart';
import 'store.dart';

class MainScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MainState();
  }
}

setStatusColor() async {
  try {
    await FlutterStatusbarcolor.setStatusBarColor(Colors.white);
    FlutterStatusbarcolor.setStatusBarWhiteForeground(false);
  } on TargetPlatform catch (e) {
    debugPrint(e.toString());
  }
}

class _MainState extends State<MainScreen> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomeScreen(),
    StoreScreen(),
    HomeScreen(),
    HomeScreen()
  ];

  @override
  Widget build(BuildContext context) {
    setStatusColor();
    return new MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.darkRed,
      ),
      home: Scaffold(
//        appBar: AppBar(
//          elevation: 0.5,
//          backgroundColor: Colors.white,
//          title: Text(
//            '1药城',
//            style: TextStyle(fontSize: 18.0, color: Colors.black),
//          ),
//        ),
        body: _children[_currentIndex], // new
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: onTabTapped, // new
          currentIndex: _currentIndex, // new/ this will be set when a new tab is tapped
          items: [
            BottomNavigationBarItem(
              icon: new Icon(Icons.home),
              title: new Text(
                '首页',
              ),
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.store),
              title: new Text('店铺'),
            ),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), title: Text('购物车')),
            BottomNavigationBarItem(icon: Icon(Icons.person), title: Text('个人'))
          ],
        ),
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
