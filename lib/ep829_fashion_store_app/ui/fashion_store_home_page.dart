import 'package:flutter/material.dart';

class FashionStoreHomePage extends StatefulWidget {
  FashionStoreHomePage({Key? key}) : super(key: key);

  @override
  _FashionStoreHomePageState createState() => _FashionStoreHomePageState();
}

class _FashionStoreHomePageState extends State<FashionStoreHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          OutlinedButton(onPressed: (){}, child: Text("Main")),
          OutlinedButton(onPressed: (){}, child: Text("Shopping Bag"))
        ],
      ),
    );
  }
}