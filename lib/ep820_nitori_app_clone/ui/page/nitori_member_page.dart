import 'package:flutter/cupertino.dart';
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
          ),
          SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.message_outlined,
                color: NitoriAppStyle.mainColor,
              ),
              Text(
                "お知らせ",
                style: TextStyle(
                  fontSize: 10,
                  color: NitoriAppStyle.mainColor,
                ),
              )
            ],
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            PhysicalModel(
              color: Colors.black87,
              elevation: 1,
              child: Container(
                height: MediaQuery.of(context).size.height / 1.9,
                decoration: BoxDecoration(color: Colors.white),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 140,
                        decoration:
                            BoxDecoration(color: NitoriAppStyle.mainColor, borderRadius: BorderRadius.circular(3)),
                        child: Stack(
                          children: [
                            Positioned(
                                left: 0,
                                right: 0,
                                top: 0,
                                bottom: 0,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "NITORI",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 48,
                                      ),
                                    ),
                                    Text(
                                      "アプリ会員証",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24,
                                      ),
                                    )
                                  ],
                                )),
                            Positioned(child: CircleAvatar(
                              backgroundColor: Colors.white.withOpacity(0.4),
                              child: Icon(Icons.lightbulb_outline),
                              foregroundColor: Colors.white,
                            ), right: 8 , top: 8,),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
