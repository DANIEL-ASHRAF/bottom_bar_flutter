import 'package:flutter/material.dart';

class FirstViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(child: Text("First view",style: TextStyle(fontSize: 22),))
        ],
      ),
    );
  }
}
