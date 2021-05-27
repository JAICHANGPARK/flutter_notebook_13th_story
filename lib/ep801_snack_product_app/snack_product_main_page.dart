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
        resizeToAvoidBottomInset: false,
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
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(border: Border.all(color: Colors.white)),
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "CHEETOS SIMPLY",
                                icon: Icon(Icons.search),
                                hintStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.orange)),
                          ),
                        ),
                        flex: 10,
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 2),
                          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(8)),
                          child: Center(
                            child: Icon(
                              Icons.tune,
                              color: Colors.orange,
                            ),
                          ),
                        ),
                        flex: 2,
                      ),
                    ],
                  ),
                ),
                flex: 2,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Found 06 Result".toUpperCase(),
                                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                              )),
                        ),
                        flex: 2,
                      ),
                      Expanded(
                        child: GridView.count(crossAxisCount: 2,mainAxisSpacing: 16 ,crossAxisSpacing: 16,
                          childAspectRatio: 4/5,
                        children: [
                          Container(
                            color: Colors.red,
                            child: Stack(
                              children: [
                                Positioned(child: Card(), top: 48, left: 0, right: 0, bottom: 0,),
                              ],
                            ),
                          ), Container(
                            color: Colors.red,
                          ),
                          Container(
                            color: Colors.red,
                          ),
                          Container(
                            color: Colors.red,
                          ),
                          Container(
                            color: Colors.red,
                          ),
                          Container(
                            color: Colors.red,
                          )
                        ],
                        ),
                        flex: 20,
                      ),
                    ],
                  ),
                ),
                flex: 18,
              ),
            ],
          ),
        ));
  }
}
