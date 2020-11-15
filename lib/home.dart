import 'dart:math';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  AssetImage one = AssetImage("assets/dice1@3x.png");
  AssetImage two = AssetImage("assets/dice2@3x.png");
  AssetImage three = AssetImage("assets/dice3@3x.png");
  AssetImage four = AssetImage("assets/dice4@3x.png");
  AssetImage five = AssetImage("assets/dice5@3x.png");
  AssetImage six = AssetImage("assets/dice6@3x.png");
  int diceImage1;
  int diceImage2;

  void initState() {
    super.initState();

    setState(() {
      diceImage1 = 1;
      diceImage2 = 1;
    });
  }

  void rollDice() {
    int random1 = (Random().nextInt(6)) + 1;
    int random2 = (Random().nextInt(6)) + 1;
    setState(() {
      diceImage1 = random1;
      diceImage2 = random2;
      print(diceImage1);
      print(diceImage2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/newbackground@3x.png"), fit: BoxFit.cover)),
  child: Column(children: <Widget>[
    Row(
    //ROW 1
    children: [ Center(
      child: Container(
        margin: EdgeInsets.fromLTRB(50,100,30,30),
        child: Center(
          child: Image.asset(
            "assets/diceeLogo@3x.png",
            width: 300,
            height: 130,
          ),
        ),
      ),
    ),
    ]
      ),
    Row(
      //ROW 2
        children: [ Column( //column 1
          children: [
            Padding(
              padding: const EdgeInsets.all(65.0),
              child: Container(
                child: Image.asset(
                  "assets/dice$diceImage1@3x.png",
                  width: 100,
                  height: 100,
                ),
              ),
            ),
          ],
        ),

    Column( //column 2
    children: [
    Image.asset(
      "assets/dice$diceImage2@3x.png",
      width: 100,
      height: 100,
    ),
  ],
  ),
          ]
    ),
    Center(
      child: Row(
        //ROW 3
          children: [
            Container(
            width: MediaQuery
                .of(context)
                .size
                .width * 0.3,
            margin: EdgeInsets.fromLTRB(130,80,50,30),
            child: ClipRRect(
              child: FlatButton(
                  child: Text(
                      'Roll',
    style: new TextStyle(
    fontSize: 21.5,)
                  ),
                  color: Colors.red[900],
                  padding:
                  EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                  onPressed: () => rollDice()),
            ),
          ),
        ]),
    ),
    ],
    ),
      ),
    );
  }
}
