import 'package:flutter/material.dart';

class GroceryHomePage extends StatefulWidget {
  GroceryHomePage({Key? key}) : super(key: key);

  @override
  _GroceryHomePageState createState() => _GroceryHomePageState();
}

class _GroceryHomePageState extends State<GroceryHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,

        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Categories"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Categories"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Categories"),
        ],

      ),
    );
  }
}