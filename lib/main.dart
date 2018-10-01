import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var pressAttention = false;
    return MaterialApp(
      theme: ThemeData(
        textSelectionColor: Colors.black,
        brightness: Brightness.light,
        primaryColor: Colors.red,
        accentColor: Colors.redAccent,
      ),
      title: '登录',
      home: Scaffold(
        appBar: AppBar(
          title: Text('登录'),
        ),
        body: new Column(
          children: <Widget>[
            new Container(
              margin: const EdgeInsets.only(top: 40.0),
              child: new Text(
                'D-CSO',
                style: new TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            new Container(
              margin: const EdgeInsets.only(top: 36.0, left: 40.0, right: 40.0),
              child: new TextField(
                keyboardType: TextInputType.text,
                decoration: new InputDecoration(
                  contentPadding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                  hintText: "用户名",
                  hintStyle: new TextStyle(
                    fontSize: 14.0,
                    color: Colors.grey,
                  ),
                ),
                style: new TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            new Container(
              margin: const EdgeInsets.only(top: 36.0, left: 40.0, right: 40.0),
              child: new TextField(
                obscureText: true,
                keyboardType: TextInputType.text,
                decoration: new InputDecoration(
                  contentPadding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                  hintText: '密码',
                  hintStyle: new TextStyle(
                    fontSize: 14.0,
                    color: Colors.grey,
                  ),
                ),
                style: new TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            new Container(
              margin: const EdgeInsets.only(top: 28.0, left: 40.0, right: 40.0),
              width: double.infinity,
              child: new RaisedButton(
                padding: new EdgeInsets.all(12.0),
                child: new Text(
                  '登录',
                  style: new TextStyle(
                    color: Colors.white,
                  ),
                ),
                shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                color: Colors.redAccent,
                onPressed: () => pressAttention = !pressAttention,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
