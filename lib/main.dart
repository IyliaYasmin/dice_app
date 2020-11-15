import 'package:dice_app/home.dart';
import 'package:flutter/material.dart';

void main()=> runApp(Main());

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Rolling Dice App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Home()
    );
  }


}
