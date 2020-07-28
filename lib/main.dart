import 'package:flutter/material.dart';
import 'dart:math';
void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.lightBlue,
          appBar: AppBar(
            centerTitle: true,
            title: Text('Ask Me Anything'),
            backgroundColor: Colors.blue,
          ),
          body: MagicBall(),
        ),
      ),
    );

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int ballChange = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: FlatButton(
                onPressed: (){
                  setState(() {
                    ballChange = Random().nextInt(5) + 1;
                  });
                },
                  child: Image.asset('images/ball$ballChange.png'),
              ),
          ),
        ],
      ),
    );
  }
}
