
import 'dart:math';

import 'package:flutter/material.dart';
void main() {
  runApp(
MyApp()
  );
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return     MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red[700],
          title: Center(
            child: Text('Dice', style: TextStyle(color: Colors.white)),
          ),
        ),
        body: DicePage(),
      ),
    );
  }
}


class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDice=1;
  int rightDice=1;
  void changeDiceFace(){
    setState(() {
      leftDice=Random().nextInt(6)+1;
      rightDice=Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(children: [
        Expanded(child: TextButton(onPressed:() {
          changeDiceFace();
        }, child: Image.asset('images/dice-$leftDice.png'),),),
        Expanded(child: TextButton(onPressed: (){
          changeDiceFace();
        }, child: Image.asset('images/dice-$rightDice.png'),),),
      ],),
    );
  }
}

