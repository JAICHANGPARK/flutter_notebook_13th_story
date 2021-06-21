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
                decoration: BoxDecoration(
                    color: Colors.white, boxShadow: [BoxShadow(color: Colors.black, offset: Offset(0, 2))]),
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
                          GestureDetector(
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
                          GestureDetector(
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
                          child: Material(
                            child: InkWell(
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
                          ),
                        )),
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Material(
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
                          ),
                        )),
                      ],
                    )),
                  ],
                ),
              ),
              flex: 6,
            ),
            Divider(
              color: Colors.grey,
              height: 0,
              thickness: 1.2,
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                color: Colors.grey[200],
                padding: EdgeInsets.all(7),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("お届けでの注文に限ります。お届けは最短で4日かかります。",
                    style: TextStyle(
                      fontSize: 12,
                    ),),
                    Text("価格はニトリネットの価格です。店舗とニトリネットでは、価格、在庫状況、お届け日、"
                        "送料が異なります。" ,style: TextStyle(
    fontSize: 12,
    ),),
                  ],
                ),
              ),
              flex: 4,
            ),
            Divider(
              color: Colors.grey,
              height: 0,
              thickness: 1.2,
            ),
            Expanded(
              child: Container(
                color: Colors.white,
              ),
              flex: 20,
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
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "注文する商品",
                                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                                ),
                                IconButton(onPressed: () {}, icon: Icon(Icons.keyboard_arrow_down))
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
              flex: 8,
            ),
          ],
        ),
      ),
    );
  }
}
