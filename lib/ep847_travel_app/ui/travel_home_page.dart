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
      body: Stack(
        children: [

          Positioned(child: Container(

            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage("https://cdn.pixabay.com/photo/2020/06/08/20/58/nyc-5276112_960_720.jpg"),
                fit: BoxFit.cover
              )
            ),
          ), left: 0,
          right: 0,
          top: 0,
          bottom: 0,)

        ],
      ),
    );
  }
}
