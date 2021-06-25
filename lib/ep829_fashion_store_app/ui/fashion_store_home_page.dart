import 'package:flutter/material.dart';

class FashionStoreHomePage extends StatefulWidget {
  FashionStoreHomePage({Key? key}) : super(key: key);

  @override
  _FashionStoreMainPageState createState() => _FashionStoreMainPageState();
}

class _FashionStoreMainPageState extends State<FashionStoreHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          OutlinedButton(onPressed: (){}, child: Text(""))
        ],
      ),
    );
  }
}