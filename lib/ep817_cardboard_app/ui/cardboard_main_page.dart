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
      body: Column(
        children: [
          Expanded(child: Placeholder(), flex: 3,),
          Divider(color: Colors.grey,
          thickness: 2,
          ),
          Expanded(child: Placeholder(), flex: 9,),
        ],
      ),
      floatingActionButton: InkWell(
        onTap: (){
           // ScaffoldMessenger.of(context).showMaterialBanner(MaterialBanner(content: Text("asd"), actions: [
           //   TextButton(
           //     child: Text("Close"),
           //     onPressed: (){
           //       Navigator.of(context).pop();
           //     },
           //   )
           // ]));
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('on'
              'Button pressed record play')));
        },
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 32, vertical: 24),
          decoration: BoxDecoration(
            color: CardboardAppStyle.mainColor,
            borderRadius: BorderRadius.circular(8)
          ),
          child: Text(
            "Record Play",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
