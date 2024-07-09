import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.purple[800],
      appBar: AppBar(
        title: const Text('Dice'),
        backgroundColor: Colors.blue[200],
      ),
      body: DiceApp(),
    )),
  );
}

class DiceApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _DiceAppState(); 
  
}

class _DiceAppState extends State<DiceApp> {

  int leftSideDice = 1;
  int rightSideDice = 1;

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(30.0),
            child:TextButton(onPressed: () { 
              setState(() {
                leftSideDice = Random().nextInt(6)+1;
                rightSideDice = Random().nextInt(6)+1;
              });
              print('left side=$leftSideDice');
             },
            child: Image.asset('images/dice$leftSideDice.png'),)  
          )),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(30.0),
            child:TextButton(onPressed: () { 
              setState(() {
                leftSideDice = Random().nextInt(6)+1;
                rightSideDice = Random().nextInt(6)+1;
              });
              print('left side=$rightSideDice');
             },
            child: Image.asset('images/dice$rightSideDice.png'),) 
          )),
        ],
      ),
    );
  }
}


