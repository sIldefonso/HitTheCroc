import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(HitCrocApp());

class HitCrocApp extends StatefulWidget {
  @override
  _HitCrocAppState createState() => _HitCrocAppState();
}

class _HitCrocAppState extends State<HitCrocApp> {
  double left = 10;
  double right = 10;
  double top = 10;
  double bottom = 10;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text('Hit the Croc'),
        ),
        body: SafeArea(
          child: Container(
            child: Padding(
                padding: EdgeInsets.fromLTRB(left, top, right, bottom),
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      left = Random().nextDouble() * 300;
                      right = Random().nextDouble() * 300;
                      top = Random().nextDouble() * 300;
                      bottom = Random().nextDouble() * 300;
                      print('left $left');
                      print('right $right');
                      print('top $top');
                      print('bottom $bottom');
                    });
                  },
                  child: Image.asset(
                    'assets/croc.png',
                    width: 100,
                    height: 100,
                  ),
                )),
          ),
        ),
      ),
    );
  }
}
