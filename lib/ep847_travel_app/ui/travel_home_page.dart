import 'package:flutter/material.dart';

class TravelHomePage extends StatefulWidget {
  const TravelHomePage({Key? key}) : super(key: key);

  @override
  _TravelHomePageState createState() => _TravelHomePageState();
}

class _TravelHomePageState extends State<TravelHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage("https://cdn.pixabay.com/photo/2020/06/08/20/58/nyc-5276112_960_720.jpg"),
                        fit: BoxFit.cover)),
              ),
              left: 0,
              right: 0,
              top: 0,
              bottom: 0,
            ),
            Positioned(
              child: Container(
                decoration: BoxDecoration(color: Colors.black.withOpacity(0.4), borderRadius: BorderRadius.circular(8)),
                padding: EdgeInsets.all(8),
                child: Center(
                  child: Icon(
                    Icons.keyboard_arrow_left,
                    size: 32,
                    color: Colors.white,
                  ),
                ),
              ),
              left: 16,
              top: 16,
            )
          ],
        ),
      ),
    );
  }
}
