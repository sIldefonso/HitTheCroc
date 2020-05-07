import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:math';

void main() => runApp(HitCrocApp());

class HitCrocApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      home: AppBody(),
    );
  }
}

class AppBody extends StatefulWidget {
  @override
  _AppBodyState createState() => _AppBodyState();
}

class _AppBodyState extends State<AppBody> {
  double left = 1;
  double right = 1;
  double top = 1;
  double bottom = 1;
  int pointsA = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  double _width = MediaQuery.of(context).size.width;
                  double _height = MediaQuery.of(context).size.height;
                  double _tmpleft = Random().nextDouble() * _width - 100;
                  double _tmptop = Random().nextDouble() * _height - 150;
                  left = _tmpleft > 0 ? _tmpleft : 0;
                  top = _tmptop > 0 ? _tmptop : 0;
                  pointsA = pointsA + 1;
                });
              },
              child: Image.asset(
                'assets/croc.png',
                width: 100,
                height: 100,
              ),
            ),
          ),
        ),
      ),
      backgroundColor: Colors.lightGreen.shade400,
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text('Pontos: $pointsA'),
            SizedBox(
              width: 30,
            ),
            RaisedButton(
              onPressed: () {
                setState(() {
                  pointsA = 0;
                });
              },
              child: Text('Recomeçar'),
            ),
            SizedBox(
              width: 30,
            ),            
            SizedBox(
              width: 30,
            ),
          ],
        ),
      ),
    );
  }
}
