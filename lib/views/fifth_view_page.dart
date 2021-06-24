import 'package:flutter/material.dart';

class FifthViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(child: Text("Fifth view",style: TextStyle(fontSize: 22),))
        ],
      ),
    );
  }
}
