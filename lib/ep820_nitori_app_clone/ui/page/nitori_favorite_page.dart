import 'package:flutter/material.dart';
import 'package:flutter_notebook_13th_story/ep820_nitori_app_clone/nitori_app_style.dart';

class NitoriFavoritePage extends StatefulWidget {
  const NitoriFavoritePage({Key? key}) : super(key: key);

  @override
  _NitoriFavoritePageState createState() => _NitoriFavoritePageState();
}

class _NitoriFavoritePageState extends State<NitoriFavoritePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(child: Column(
            children: [
              Expanded(child: Placeholder()),
              Expanded(child: Row(
                children: [
                  Expanded(child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      focusColor: NitoriAppStyle.mainColor,
                      hoverColor:  NitoriAppStyle.mainColor,
                      splashColor:  NitoriAppStyle.mainColor,
                      onTap: (){},
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all( color: NitoriAppStyle.mainColor, width: 1.5),
                          borderRadius: BorderRadius.circular(4)
                        ),
                        child: Center(
                          child: Text("すべてを選択"),
                        ),
                      ),
                    ),
                  )),
                  Expanded(child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all( color: NitoriAppStyle.mainColor, width: 1.5),
                          borderRadius: BorderRadius.circular(4)
                      ),
                      child: Center(
                        child: Text("すべてを選択を解除"),
                      ),
                    ),
                  )),

                ],
              )),
            ],
          ), flex: 3,),
          Expanded(child: Placeholder(),flex: 14,),
          Expanded(child: Placeholder(), flex: 4,),
        ],
      ),
    );
  }
}
