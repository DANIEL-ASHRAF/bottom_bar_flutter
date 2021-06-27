import 'dart:async';

import 'package:flutter/material.dart';

//class FirstViewPage extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      body: Column(
//        mainAxisAlignment: MainAxisAlignment.center,
//        crossAxisAlignment: CrossAxisAlignment.stretch,
//        children: [
//          Center(child: Text("First view",style: TextStyle(fontSize: 22),))
//        ],
//      ),
//    );
//  }
//}

class FirstViewPage extends StatefulWidget {
  FirstViewPage({Key? key}) : super(key: key);

  @override
  _FirstViewPageState createState() => _FirstViewPageState();
}

class _FirstViewPageState extends State<FirstViewPage> {
  int _counter = 20;
  Timer? _timer;

  void _startTimer() {
    _counter = 20;
    if (_timer != null) {
      _timer!.cancel();
    }
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_counter > 0) {
          _counter--;
        } else {
          _timer!.cancel();
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Timer App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            (_counter > 0)
                ? Text("")
                : Text(
              "DONE!",
              style: TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.bold,
                fontSize: 48,
              ),
            ),
            Text(
              '$_counter',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 48,
              ),
            ),
            RaisedButton(
              onPressed: () => _startTimer(),
              child: Text("Start 10 second count down"),
            ),
          ],
        ),
      ),
    );
  }
}