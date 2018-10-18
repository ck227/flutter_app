import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'home.dart';

/*class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      //包了这个后没有返回按钮了
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: Scaffold(
        appBar: AppBar(
          elevation: 0.5,
          title: Text(
            '1药城',
            style: TextStyle(fontSize: 18.0, color: Colors.black),
          ),
        ),
        body: Center(
          child: RaisedButton(
            onPressed: () => Navigator.pop(context),
            // Navigate back to first screen when tapped!
            child: Text('Go back!'),
          ),
        ),
      ),
    );
  }
}*/

class MainScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MainState();
  }
}

class _MainState extends State<MainScreen> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomeScreen(Colors.cyan),
    HomeScreen(Colors.deepOrange),
    HomeScreen(Colors.green),
    HomeScreen(Colors.blueGrey)
  ];

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.darkRed,
      ),
      home: Scaffold(
        appBar: AppBar(
          elevation: 0.5,
          backgroundColor: Colors.white,
          title: Text(
            '1药城',
            style: TextStyle(fontSize: 18.0, color: Colors.black),
          ),
        ),
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
