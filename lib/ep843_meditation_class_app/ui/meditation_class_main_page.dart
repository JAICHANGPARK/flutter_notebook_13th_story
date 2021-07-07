import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class MeditationClassHomePage extends StatefulWidget {
  const MeditationClassHomePage({Key? key}) : super(key: key);

  @override
  _MeditationClassHomePageState createState() =>
      _MeditationClassHomePageState();
}

class _MeditationClassHomePageState extends State<MeditationClassHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              left: 16,
              right: 16,
              bottom: 24,
              child: Container(
                height: 64,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.15),
                          offset: Offset(0, 2),
                          blurRadius: 1,
                          spreadRadius: 1)
                    ]),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Icon(Icons.home_outlined),
                        Text("Home"),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.home_outlined),
                        Text("Home"),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.home_outlined),
                        Text("Home"),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.home_outlined),
                        Text("Home"),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Ionicons.person_outline),
                        Text("Profile"),
                      ],
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
