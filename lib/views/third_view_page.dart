import 'package:flutter/material.dart';

class ThirdViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(child: Text("Third view",style: TextStyle(fontSize: 22),))
        ],
      ),
    );
  }
}
