import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SnackProductMainPage extends StatefulWidget {
  const SnackProductMainPage({Key? key}) : super(key: key);

  @override
  _SnackProductMainPageState createState() => _SnackProductMainPageState();
}

class _SnackProductMainPageState extends State<SnackProductMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      Expanded(
                          child: Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.arrow_back_ios),
                            padding: EdgeInsets.zero,
                            iconSize: 16,
                          ),
                          Text(
                            "BACK",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      )),

                      Expanded(
                          child: Center(
                              child: Text(
                        "SEARCH",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ))),
                      Expanded(
                          child: Align(
                              alignment: Alignment.centerRight,
                              child: CircleAvatar(
                                backgroundColor: Colors.orange,
                              ))),
                      // CircleAvatar(),
                    ],
                  ),
                ),
                flex: 2,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16 ,vertical: 4),
                  child: Row(
                    children: [
                      Expanded(child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white)
                        ),
                      ), flex: 10,),
                      Expanded(child: Placeholder(), flex: 2,),
                    ],
                  ),
                ),
                flex: 2,
              ),
              Expanded(
                child: Placeholder(),
                flex: 15,
              ),
            ],
          ),
        ));
  }
}
