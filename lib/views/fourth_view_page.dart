import 'package:flutter/material.dart';

class FourthViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(child: Text("Fourth view",style: TextStyle(fontSize: 22),))
        ],
      ),
    );
  }
}
