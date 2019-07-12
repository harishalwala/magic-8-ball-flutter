import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatefulWidget {
  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  @override
  int changeCounter = 1;
  int previousNumber = 1;
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
            Expanded(
              flex:1,
              child: FlatButton(
                onPressed: (){
                  setState(() {
                    changeCounter = Random().nextInt(4) + 1;
                    if(previousNumber == changeCounter)
                      {
                        changeCounter = Random().nextInt(4) + 1;
                      }
                    previousNumber = changeCounter;
                  });
                },
                child: Image.asset("images/ball$changeCounter.png"),
              ),
            ),
        ],
      ),
    );
  }


}
