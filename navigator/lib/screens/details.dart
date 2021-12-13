import 'package:flutter/material.dart';

class DeatailPage extends StatelessWidget {
  const DeatailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Deatail Page"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "This Is Our Deatail Page ",
                style: TextStyle(fontSize: 18),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Go Home'),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
