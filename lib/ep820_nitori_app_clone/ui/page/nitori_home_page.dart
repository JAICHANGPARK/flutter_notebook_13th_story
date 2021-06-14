import 'package:flutter/material.dart';

import '../../nitori_app_style.dart';

class NitoriHomePage extends StatefulWidget {
  const NitoriHomePage({Key? key}) : super(key: key);

  @override
  _NitoriHomePageState createState() => _NitoriHomePageState();
}

class _NitoriHomePageState extends State<NitoriHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.grey,
          selectedItemColor:  NitoriAppStyle.mainColor,
          selectedIconTheme: IconTheme.of(context).copyWith(
            color:  NitoriAppStyle.mainColor,
          ),
          selectedLabelStyle: TextStyle(
            color:  NitoriAppStyle.mainColor,
          ),
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "おうちでニトリ"),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "ニトリネット")
          ],
        ),
    );
  }
}

