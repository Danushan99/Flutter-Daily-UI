import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  AnimationController _animationController;
  Animation<double> _animation;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.red,
      ),
    );
  }
}