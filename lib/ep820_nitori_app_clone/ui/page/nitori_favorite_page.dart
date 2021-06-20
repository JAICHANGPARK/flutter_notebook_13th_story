import 'package:flutter/material.dart';
import 'package:flutter_notebook_13th_story/ep820_nitori_app_clone/nitori_app_style.dart';

class NitoriFavoritePage extends StatefulWidget {
  const NitoriFavoritePage({Key? key}) : super(key: key);

  @override
  _NitoriFavoritePageState createState() => _NitoriFavoritePageState();
}

class _NitoriFavoritePageState extends State<NitoriFavoritePage> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      child: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              _scaffoldKey.currentState!.openDrawer();
                            },
                            icon: Icon(
                              Icons.menu,
                            ),
                            color: NitoriAppStyle.mainColor,
                          ),
                          Expanded(
                            child: Container(
                              height: 38,
                              width: double.infinity,
                              decoration:
                                  BoxDecoration(color: Colors.grey[100], borderRadius: BorderRadius.circular(3)),
                              padding: EdgeInsets.symmetric(horizontal: 8),
                              child: TextField(
                                controller: _textEditingController,
                                decoration: InputDecoration(
                                    icon: Icon(Icons.search),
                                    hintText: "商品を探す",
                                    suffixIcon: Icon(Icons.mic_none),
                                    border: InputBorder.none),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Pressed Cart icon")));
                            },
                            child: Column(
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
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          InkWell(
                            onTap: () {
                              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Pressed info icon")));
                            },
                            child: Column(
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
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                        child: Row(
                      children: [
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            focusColor: NitoriAppStyle.mainColor,
                            hoverColor: NitoriAppStyle.mainColor,
                            splashColor: NitoriAppStyle.mainColor,
                            onTap: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: NitoriAppStyle.mainColor, width: 1.5),
                                  borderRadius: BorderRadius.circular(4)),
                              child: Center(
                                child: Text(
                                  "すべてを選択",
                                  style: TextStyle(
                                    color: NitoriAppStyle.mainColor,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )),
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            splashColor: NitoriAppStyle.mainColor,
                            onTap: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: NitoriAppStyle.mainColor, width: 1.5),
                                  borderRadius: BorderRadius.circular(4)),
                              child: Center(
                                child: Text(
                                  "すべてを選択を解除",
                                  style: TextStyle(
                                    color: NitoriAppStyle.mainColor,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )),
                      ],
                    )),
                  ],
                ),
              ),
              flex: 3,
            ),
            Expanded(
              child: Placeholder(),
              flex: 14,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 8),
                child: PhysicalModel(
                  color: Colors.black87,
                  elevation: 2,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16),
                      ),
                    ),
                    child: Column(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 16),
                            child: Row(
                              children: [
                                Text(
                                  "注文する商品",
                                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          flex: 2,
                        ),
                        Divider(
                          color: Colors.grey,
                        ),
                        Expanded(
                          child: Placeholder(),
                          flex: 6,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              flex: 5,
            ),
          ],
        ),
      ),
    );
  }
}
