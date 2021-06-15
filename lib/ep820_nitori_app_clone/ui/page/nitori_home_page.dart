import 'package:flutter/material.dart';

import '../../nitori_app_style.dart';

class NitoriHomePage extends StatefulWidget {
  const NitoriHomePage({Key? key}) : super(key: key);

  @override
  _NitoriHomePageState createState() => _NitoriHomePageState();
}

class _NitoriHomePageState extends State<NitoriHomePage> {
  int _bottomTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        children: [
          
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        elevation: 2,
        currentIndex: _bottomTabIndex,
        onTap: (idx) {
          setState(() {
            _bottomTabIndex = idx;
          });
        },
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.grey,
        selectedItemColor: NitoriAppStyle.mainColor,
        selectedLabelStyle: TextStyle(color: NitoriAppStyle.mainColor, fontSize: 10),
        unselectedLabelStyle: TextStyle(color: Colors.grey, fontSize: 10),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "おうちでニトリ"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined), label: "ニトリネット"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: "お気に入り商品"),
          BottomNavigationBarItem(icon: Icon(Icons.work_outline), label: "便利機能"),
          BottomNavigationBarItem(icon: Icon(Icons.badge), label: "会員証")
        ],
      ),
    );
  }
}
