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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            OutlinedButton(onPressed: (){
              Navigator.of(context).pushNamed("/main");
            }, child: Text("Main")),
            OutlinedButton(onPressed: (){
              Navigator.of(context).pushNamed("/shopping_bag");

            }, child: Text("Shopping Bag"))
          ],
        ),
      ),
    );
  }
}