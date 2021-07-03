import 'package:flutter/material.dart';

class GroceryHomePage extends StatefulWidget {
  GroceryHomePage({Key? key}) : super(key: key);

  @override
  _GroceryHomePageState createState() => _GroceryHomePageState();
}

class _GroceryHomePageState extends State<GroceryHomePage> {
  // 82 189 108
  ValueNotifier<int> _bottomTabIdx = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff08150D),
      body: ValueListenableBuilder(
        valueListenable: _bottomTabIdx,
        builder: (BuildContext context, int value, Widget? child) {
          switch (value) {
            case 0:
              return SafeArea(
                child: Container(
                  child: Center(
                    child: Text("Page 1"),
                  ),
                ),
              );
            default:
              return SafeArea(
                child: Container(
                  child: Center(
                    child: Text("Page 2"),
                  ),
                ),
              );
          }
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (idx) {
          _bottomTabIdx.value = idx;
        },
        backgroundColor: const Color(0xff08150D),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xff52C66C),
        unselectedItemColor: Colors.white,
        selectedLabelStyle: const TextStyle(fontSize: 12),
        unselectedLabelStyle: const TextStyle(fontSize: 12),
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.flutter_dash_outlined), label: "Categories"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border), label: "Favorite"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined), label: "Cart"),
        ],
      ),
    );
  }
}
