import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'main.dart';

import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(home: new LoginScreen());
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

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Colors.grey[500]);
    return MaterialApp(
      theme: ThemeData(
//        primaryColor: Colors.white,
          ),
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
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
                onPressed: () {
//                  setStatusColor();
//                  Navigator.push(
//                    context,
//                    MaterialPageRoute(builder: (context) => MainScreen()),
//                  );
                  fetchPost();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

//  get() async {
//    var httpClient = new HttpClient();
//    var uri = new Uri.http('http://47.106.87.16:8080/zbhProject/', '/smsVerifyFront/send.html',
//        {'loginName': '18507104251', 'type': '1'});
//    var request = await httpClient.getUrl(uri);
//    var response = await request.close();
//    var responseBody = await response.transform(UTF8.decoder).join();
//    if (response.statusCode == HttpStatus.OK) {}
//  }

  Future<Post> fetchPost() async {
    var uri = new Uri.http('http://47.106.87.16:8080/zbhProject/', '/smsVerifyFront/send.html',
        {'loginName': '18507104251', 'type': '1'});
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      // If the call to the server was successful, parse the JSON
      return Post.fromJson(json.decode(response.body));
    } else {
      // If that call was not successful, throw an error.
      throw Exception('Failed to load post');
    }
  }
}

class Post {
  final int code;
  final String msg;

  Post({this.code, this.msg});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      code: json['code'],
      msg: json['msg'],
    );
  }
}
