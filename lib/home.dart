import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {

  final Color color;

  HomeScreen(this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
    );
  }
}