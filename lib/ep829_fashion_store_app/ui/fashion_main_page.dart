import 'package:flutter/material.dart';

class FashionMainPage extends StatefulWidget {
  FashionMainPage({Key? key}) : super(key: key);

  @override
  _FashionMainPageState createState() => _FashionMainPageState();
}

class _FashionMainPageState extends State<FashionMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(24)
                ),
                child: Stack(
                  children: [

                  ],
                ),
              ),
            ), flex: 8,),
            Expanded(child: Placeholder(), flex: 3,),
            Expanded(child: Placeholder(), flex: 2,),
          ],
        ),
      ),
    );
  }
}
