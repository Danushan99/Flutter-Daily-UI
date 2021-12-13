import 'package:flutter/material.dart';
import './homepage.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          Text("Home Page"),
          RaisedButton(
            onPressed: null,
            child: Text("go deatails"),
          )
        ],
      ),
    ));
  }
}
