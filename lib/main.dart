import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MagicBall(),
  ));
}

class MagicBall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade500,
      appBar: AppBar(
        title: Text("Ask Me Anything !"),
        backgroundColor: Colors.blueGrey.shade900,
      ),
      body: SafeArea(
        child: Ball(),
      ),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNum = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: FlatButton(
        shape: CircleBorder(),
        child: Image.asset("images/ball$ballNum.png"),
        onPressed: () {
          setState(() {
            ballNum = Random().nextInt(5) + 1;
          });
        },
      ),
    );
  }
}
