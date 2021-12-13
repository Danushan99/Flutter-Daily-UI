// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import './homepage.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Homepage"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "This Is Our Home Page ",
                style: TextStyle(fontSize: 18),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Go Next'),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12), // <-- Radius
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
