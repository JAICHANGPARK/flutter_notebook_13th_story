import 'package:flutter/material.dart';
import 'package:flutter_notebook_13th_story/ep820_nitori_app_clone/nitori_app_style.dart';

class NitoriMemberPage extends StatefulWidget {
  NitoriMemberPage({Key? key}) : super(key: key);

  @override
  _NitoriMemberPageState createState() => _NitoriMemberPageState();
}

class _NitoriMemberPageState extends State<NitoriMemberPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
          color: NitoriAppStyle.mainColor,
        ),
        title: Text(
          "会員証",
          style: TextStyle(color: Colors.black, fontSize: 15),
        ),
        actions: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.add_shopping_cart,
                color: NitoriAppStyle.mainColor,
              ),
              Text(
                "カート",
                style: TextStyle(
                  fontSize: 10,
                  color: NitoriAppStyle.mainColor,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
