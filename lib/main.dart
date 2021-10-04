import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
          home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.blue[800],
          title: Center(
            child: Text(
              'Ask Me Anything',
              style: TextStyle(
                fontFamily: 'Pacifico',
              ),
            ),
          ),
        ),
        body: magic_ball(),
      )),
    );

class magic_ball extends StatefulWidget {
  const magic_ball({Key? key}) : super(key: key);

  @override
  _magic_ballState createState() => _magic_ballState();
}

class _magic_ballState extends State<magic_ball> {
  int ballChange = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  ballChange = Random().nextInt(5) + 1;
                  print('The ball fell on $ballChange');

                  // call this method when desired
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
