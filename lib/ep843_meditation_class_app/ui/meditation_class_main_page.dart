import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class MeditationClassHomePage extends StatefulWidget {
  const MeditationClassHomePage({Key? key}) : super(key: key);

  @override
  _MeditationClassHomePageState createState() =>
      _MeditationClassHomePageState();
}

class _MeditationClassHomePageState extends State<MeditationClassHomePage> {
  ValueNotifier<int> _pageIndex = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                    GestureDetector(
                      onTap: () {
                        _pageIndex.value = 0;
                      },
                      child: ValueListenableBuilder(
                        valueListenable: _pageIndex,
                        builder:
                            (BuildContext context, int value, Widget? child) {
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Ionicons.home_outline,
                                color:
                                    value == 0 ? Colors.black : Colors.black45,
                              ),
                              SizedBox(height: 8),
                              Text("Home",
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: value == 0
                                          ? Colors.black
                                          : Colors.black45)),
                            ],
                          );
                        },
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        _pageIndex.value = 1;
                      },
                      child: ValueListenableBuilder(
                        valueListenable: _pageIndex,
                        builder:
                            (BuildContext context, int value, Widget? child) {
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Ionicons.calendar_outline,
                                color:
                                    value == 1 ? Colors.black : Colors.black45,
                              ),
                              SizedBox(height: 8),
                              Text("Upcoming",
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: value == 1
                                          ? Colors.black
                                          : Colors.black45)),
                            ],
                          );
                        },
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        _pageIndex.value = 2;
                      },
                      child: ValueListenableBuilder(
                        valueListenable: _pageIndex,
                        builder:
                            (BuildContext context, int value, Widget? child) {
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Ionicons.search,
                                color:
                                value == 2 ? Colors.black : Colors.black45,
                              ),
                              SizedBox(height: 8),
                              Text("Search",
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: value == 2
                                          ? Colors.black
                                          : Colors.black45)),
                            ],
                          );
                        },
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        _pageIndex.value = 3;
                      },
                      child: ValueListenableBuilder(
                        valueListenable: _pageIndex,
                        builder:
                            (BuildContext context, int value, Widget? child) {
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Ionicons.notifications_outline,
                                color:
                                value == 3 ? Colors.black : Colors.black45,
                              ),
                              SizedBox(height: 8),
                              Text("Notifications",
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: value == 3
                                          ? Colors.black
                                          : Colors.black45)),
                            ],
                          );
                        },
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        _pageIndex.value = 4;
                      },
                      child: ValueListenableBuilder(
                        valueListenable: _pageIndex,
                        builder:
                            (BuildContext context, int value, Widget? child) {
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Ionicons.person_outline,
                                color:
                                value == 4 ? Colors.black : Colors.black45,
                              ),
                              SizedBox(height: 8),
                              Text("Profile",
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: value == 4
                                          ? Colors.black
                                          : Colors.black45)),
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
