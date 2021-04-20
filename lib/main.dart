import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue.shade300,
        appBar: AppBar(
          title: Text('Ask Me Anything'),
          backgroundColor: Colors.blue.shade700,
        ),
        body: MagicPage(),
      ),
    ),
  );
}

class MagicPage extends StatefulWidget {
  @override
  _MagicPageState createState() => _MagicPageState();
}

class _MagicPageState extends State<MagicPage> {

  var BallNumber = 1;

  void Answer (){
    setState(() {
      BallNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
          children: <Widget>[
            Expanded(
                child: FlatButton(
                  onPressed: (){
                    Answer();
                  },
                  child: Image.asset('images/ball$BallNumber.png'),
                ),
            ),
          ],
        ),
    );
  }
}
