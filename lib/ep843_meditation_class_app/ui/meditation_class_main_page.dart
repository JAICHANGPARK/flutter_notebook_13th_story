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
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Icon(Ionicons.home_outline),
                        SizedBox(height: 8),
                        Text(
                          "Home",
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Ionicons.calendar_number_outline),
                        SizedBox(height: 8),
                        Text(
                          "Upcoming",
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Ionicons.search),
                        SizedBox(height: 8),
                        Text(
                          "Search",
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Ionicons.notifications_outline),
                        SizedBox(height: 8),
                        Text("Notification", style: TextStyle(fontSize: 12)),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Ionicons.person_outline),
                        SizedBox(height: 8),
                        Text("Profile", style: TextStyle(fontSize: 12)),
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
