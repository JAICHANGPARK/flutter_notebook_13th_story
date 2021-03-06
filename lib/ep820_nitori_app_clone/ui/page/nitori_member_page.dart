import 'package:barcode/barcode.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_notebook_13th_story/ep820_nitori_app_clone/mock/nitori_topic_items.dart';
import 'package:flutter_notebook_13th_story/ep820_nitori_app_clone/nitori_app_style.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NitoriMemberPage extends StatefulWidget {
  NitoriMemberPage({Key? key}) : super(key: key);

  @override
  _NitoriMemberPageState createState() => _NitoriMemberPageState();
}

class _NitoriMemberPageState extends State<NitoriMemberPage> {
  String? svg;

  Future generateBarcode() async {
    final dm = Barcode.code39();
    svg = dm.toSvg("0000 0000 0000", width: 360, height: 150);
    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    generateBarcode();
  }

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PhysicalModel(
              color: Colors.black87,
              elevation: 1,
              child: Container(
                height: MediaQuery.of(context).size.height / 1.8,
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
                            Positioned(
                              child: CircleAvatar(
                                radius: 16,
                                backgroundColor: Colors.white.withOpacity(0.2),
                                child: Icon(Icons.lightbulb_outline),
                                foregroundColor: Colors.white,
                              ),
                              right: 8,
                              top: 8,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      child: Container(
                        height: 100,
                        child: svg == null ? Center() : SvgPicture.string(svg!),
                      ),
                    ),
                    Text.rich(TextSpan(children: [
                      TextSpan(
                        text: "500",
                        style: TextStyle(fontSize: 48),
                      ),
                      TextSpan(
                        text: " pt",
                        style: TextStyle(fontSize: 18),
                      )
                    ])),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      "今年12月31日失効予定 : 10pt",
                      style: TextStyle(fontSize: 14),
                    ),
                    Text(
                      "付与されたポイントは翌日反映されます",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      "別のアカウントでログイン",
                      style: TextStyle(fontSize: 14, decoration: TextDecoration.underline),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, bottom: 4, top: 4),
              child: Text("会員情報", style: TextStyle(
                fontSize: 12,
                color: Colors.grey
              ),),
            ),
            Container(
              height: 150,
              decoration: BoxDecoration(color: Colors.white),
              child: ListView.separated(
                separatorBuilder: (context,index){
                  return Divider(
                    color: Colors.grey[400],
                    height: 8,
                    thickness: 1,
                  );
                }, itemCount: memberInformationItems.length, itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text("${memberInformationItems[index]}",style: TextStyle(
                      fontSize: 13
                    ),),
                  );
              },
              ),
            )
          ],
        ),
      ),
    );
  }
}
