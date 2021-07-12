import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

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
          Positioned(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("https://cdn.pixabay.com/"
                      "photo/2020/06/08/20/58/nyc-5276112_960_720.jpg"),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.darken),
                ),
              ),
            ),
            left: 0,
            right: 0,
            top: 0,
            bottom: 0,
          ),
          Positioned(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.4),
                borderRadius: BorderRadius.circular(8),
              ),
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
            top: 72,
          ),
          Positioned(
            child: Center(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 42, vertical: 24),
                decoration: BoxDecoration(color: Colors.black.withOpacity(0.3),
                borderRadius: BorderRadius.circular(8)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Ionicons.cloudy_night_outline,
                      size: 48,
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "95F",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    )
                  ],
                ),
              ),
            ),
            left: 0,
            right: 0,
            top: 200,
          ),
          Positioned(
              left: 16,
              right: 0,
              bottom: 24,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "New York",
                    style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  Text(
                    "1k places 12,456 reviews",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: Colors.white),
                  ),
                  SizedBox(
                    height: 48,
                  ),
                  Text(
                    "Popular Places",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 4,
                    child: Container(
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index){
                          return SizedBox(
                            width: 160,
                            child: Card(
                              child: Column(
                                children: [
                                  
                                ],
                              )
                            ),
                          );
                        },
                      ),
                    ),
                  )
                ],
              ))
        ],
      ),
    );
  }
}
