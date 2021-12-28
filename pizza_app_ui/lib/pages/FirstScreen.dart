// ignore_for_file: file_names
// ignore: avoid_web_libraries_in_flutter

import 'dart:html';

import 'package:flutter/material.dart';
import 'package:pizza_app_ui/animations/fadeanimation.dart';
import 'package:page_transition/page_transition.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key key}) : super(key: key);

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen>
    with TickerProviderStateMixin {
  AnimationController _animationController;
  Animation<double> _animation;
  bool _textVisble = true;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 100),
    );
    _animation =
        Tween<double>(begin: 0.0, end: 25.0).animate(_animationController);
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _ontap() {
    setState(() {
      _textVisble = false;
    });
    _animationController.forward().then((f) => Navigator.push(context, PageTransitions )))
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/pizz2.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              colors: [
                Colors.black.withOpacity(.8),
                Colors.black.withOpacity(.6),
                Colors.black.withOpacity(.2),
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const FadeAnimation(
                    0.5,
                    Text(
                      "Take Your order by free delevery",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 45,
                          fontWeight: FontWeight.bold),
                    )),
                const SizedBox(
                  height: 20,
                ),
                const FadeAnimation(
                    1,
                    Text(
                      "see the location \n more info",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          height: 1.4,
                          fontWeight: FontWeight.normal),
                    )),
                const SizedBox(
                  height: 20,
                ),
                FadeAnimation(
                  1.2,
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient:
                          // ignore: prefer_const_literals_to_create_immutables
                          const LinearGradient(
                              colors: [Colors.yellow, Colors.orange]),
                    ),
                    child: const MaterialButton(
                      minWidth: double.infinity,
                      onPressed: null,
                      child: Text(
                        "Start",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Align(
                  child: FadeAnimation(
                    1.4,
                    Text(
                      "Now Delever to yor door 24/7",
                      style: TextStyle(color: Colors.white70),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
