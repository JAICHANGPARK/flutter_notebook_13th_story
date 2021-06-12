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
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      children: [
                        Expanded(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Wins",
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              "154",
                              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                            ),
                            Container(
                              width: 48,
                              decoration: BoxDecoration(
                                color: Colors.green[50],
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.arrow_upward,
                                    size: 12,
                                    color: CardboardAppStyle.mainColor,
                                  ),
                                  Text(
                                    "4%",
                                    style: TextStyle(color: CardboardAppStyle.mainColor),
                                  ),
                                ],
                              ),
                            )
                          ],
                        )),
                        Expanded(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Win Rate",
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              "61.5%",
                              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                            ),
                            Container(
                              width: 48,
                              decoration: BoxDecoration(
                                color: Colors.green[50],
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.arrow_upward,
                                    size: 12,
                                    color: CardboardAppStyle.mainColor,
                                  ),
                                  Text(
                                    "4%",
                                    style: TextStyle(color: CardboardAppStyle.mainColor),
                                  ),
                                ],
                              ),
                            )
                          ],
                        )),
                        Expanded(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Unique Games",
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              "23",
                              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                            ),
                            Container(
                              width: 48,
                              decoration: BoxDecoration(
                                color: Colors.red[50],
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.arrow_downward, size: 12, color: Colors.red),
                                  Text(
                                    "-2%",
                                    style: TextStyle(color: Colors.red),
                                  ),
                                ],
                              ),
                            )
                          ],
                        )),
                      ],
                    ),
                  ),
                  flex: 3,
                ),
                Expanded(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 48,
                          width: 120,
                          decoration: BoxDecoration(color: Colors.grey[100], borderRadius: BorderRadius.circular(8)),
                          child: Stack(
                            children: [
                              Positioned(
                                  right: 0,
                                  top: 0,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.red,
                                    radius: 8,
                                  )),
                              Center(
                                child: Text("My Plays"),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 48,
                          width: 120,
                          decoration: BoxDecoration(color: Colors.grey[100], borderRadius: BorderRadius.circular(8)),
                          child: Center(
                            child: Text("All Stats"),
                          )
                        ),
                      ),
                      Expanded(child: Placeholder()),
                    ],
                  ),
                  flex: 2,
                ),
              ],
            ),
            flex: 3,
          ),
          Divider(
            color: Colors.grey,
            thickness: 2,
          ),
          Expanded(
            child: Placeholder(),
            flex: 9,
          ),
        ],
      ),
      floatingActionButton: InkWell(
        onTap: () {
          // ScaffoldMessenger.of(context).showMaterialBanner(MaterialBanner(content: Text("asd"), actions: [
          //   TextButton(
          //     child: Text("Close"),
          //     onPressed: (){
          //       Navigator.of(context).pop();
          //     },
          //   )
          // ]));
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text('on'
                  'Button pressed record play')));
        },
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 32, vertical: 24),
          decoration: BoxDecoration(color: CardboardAppStyle.mainColor, borderRadius: BorderRadius.circular(8)),
          child: Text(
            "Record Play",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
