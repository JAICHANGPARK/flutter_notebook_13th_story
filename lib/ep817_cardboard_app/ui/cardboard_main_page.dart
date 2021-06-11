
import 'package:flutter/material.dart';
import 'package:flutter_notebook_13th_story/ep817_cardboard_app/styles/cardboard_app_style.dart';

class CardboardMainPage extends StatefulWidget {
  CardboardMainPage({Key? key}) : super(key: key);

  @override
  _CardboardMainPageState createState() => _CardboardMainPageState();
}

class _CardboardMainPageState extends State<CardboardMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: CardboardAppStyle.mainColor,
        title: Text("Stats"),
        elevation: 0,
      ),
      floatingActionButton: Container(
        height: 64,
        width: 120,
        decoration: BoxDecoration(
          color:  CardboardAppStyle.mainColor,
        ),
        child: Center(
          child: Text("Record Play", style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),),
        ),
      ),
    );
  }
}