import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var pressAttention = false;
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0.5,
          centerTitle: true,
          title: Text(
            '登录',
            style: TextStyle(fontSize: 18.0, color: Colors.black),
          ),
        ),
        body: new Column(
          children: <Widget>[
            new Image.asset(
              'assets/login_logo.png',
              height: 120.0,
            ),
            new Container(
              margin: const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
              child: new TextField(
                style: new TextStyle(
                  color: Colors.black,
                  fontSize: 16.0,
                ),
                cursorColor: Colors.darkRed,
                keyboardType: TextInputType.text,
                decoration: new InputDecoration(
                    contentPadding: const EdgeInsets.only(left: 8.0),
                    hintText: "输入用户名",
                    hintStyle: new TextStyle(
                      fontSize: 16.0,
                      color: Colors.grey[600],
                    ),
                    border: InputBorder.none),
              ),
            ),
            new Container(
              margin: const EdgeInsets.only(left: 16.0, right: 16.0, top: 10.0),
              child: new Divider(
                height: 1.0,
                color: Colors.grey[600],
              ),
            ),
            new Container(
              margin: const EdgeInsets.only(top: 24.0, left: 16.0, right: 16.0),
              child: new TextField(
                style: new TextStyle(
                  color: Colors.black,
                  fontSize: 16.0,
                ),
                cursorColor: Colors.darkRed,
                keyboardType: TextInputType.text,
                decoration: new InputDecoration(
                  hintText: '密码',
                  hintStyle: new TextStyle(
                    fontSize: 16.0,
                    color: Colors.grey[600],
//                    contentPadding: const EdgeInsets.only(left: 8.0, top: 10.0, bottom: 10.0),
                  ),
                  contentPadding: const EdgeInsets.only(left: 8.0),
                  border: InputBorder.none,
                ),
              ),
            ),
            new Container(
              margin: const EdgeInsets.only(left: 16.0, right: 16.0, top: 10.0),
              child: new Divider(
                height: 1.0,
                color: Colors.grey[600],
              ),
            ),
            new Container(
              margin: const EdgeInsets.only(top: 28.0, left: 16.0, right: 16.0),
              width: double.infinity,
              child: new RaisedButton(
                highlightColor: Colors.darkRed[200],
                padding: new EdgeInsets.all(12.0),
                child: new Text(
                  '登录',
                  style: new TextStyle(
                    color: Colors.white,
                  ),
                ),
                shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(2.0)),
                color: Colors.darkRed,
                onPressed: () => pressAttention = !pressAttention,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
