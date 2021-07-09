import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:md2_tab_indicator/md2_tab_indicator.dart';

class MeditationClassHomePage extends StatefulWidget {
  const MeditationClassHomePage({Key? key}) : super(key: key);

  @override
  _MeditationClassHomePageState createState() =>
      _MeditationClassHomePageState();
}

class _MeditationClassHomePageState extends State<MeditationClassHomePage>
    with SingleTickerProviderStateMixin {
  ValueNotifier<int> _pageIndex = ValueNotifier<int>(0);
  late TabController _tabController;
  final TextStyle _tabDayTextStyle = TextStyle(fontSize: 20);
  final TextStyle _tabWeekdayTextStyle = TextStyle(fontSize: 10);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  String dayConverter(int weekday) {
    switch (weekday) {
      case 1:
        return "MON";
      case 2:
        return "TUE";
      case 3:
        return "WED";
      case 4:
        return "THU";
      case 5:
        return "FRI";
      case 6:
        return "SAT";
      case 7:
        return "SUN";
      default:
        return "MON";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              left: 0,
              top: 0,
              right: 0,
              child: ValueListenableBuilder<int>(
                valueListenable: _pageIndex,
                builder: (context, value, child) {
                  switch (value) {
                    case 0:
                      return buildFirstPage();
                    case 1:
                      return BuildSecondPage();
                    case 2:
                      return BuildSearchPage();
                    default:
                      return buildFirstPage();
                  }
                },
              ),
            ),
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
                                  color: value == 0
                                      ? Colors.black
                                      : Colors.black45,
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
                                  color: value == 1
                                      ? Colors.black
                                      : Colors.black45,
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
                                  color: value == 2
                                      ? Colors.black
                                      : Colors.black45,
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
                                  color: value == 3
                                      ? Colors.black
                                      : Colors.black45,
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
                                  color: value == 4
                                      ? Colors.black
                                      : Colors.black45,
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
      ),
    );
  }

  Widget buildFirstPage() {
    return Container(
      decoration: BoxDecoration(),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(CupertinoIcons.search),
                  iconSize: 32,
                ),
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://avatars.githubusercontent.com/u/19484515?v=4"),
                ),
              ],
            ),
          ),
          SizedBox(height: 16),
          TabBar(
            controller: _tabController,
            labelStyle: TextStyle(color: Colors.black),
            unselectedLabelStyle: TextStyle(
              color: Colors.grey,
            ),
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(
                child: Column(
                  children: [
                    Text(
                      "${DateTime.now().subtract(Duration(days: 4)).day}",
                      style: _tabDayTextStyle,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "${dayConverter(DateTime.now().subtract(Duration(days: 4)).weekday)}",
                      style: _tabWeekdayTextStyle,
                    ),
                  ],
                ),
              ),
              Tab(
                child: Column(
                  children: [
                    Text(
                      "${DateTime.now().subtract(Duration(days: 3)).day}",
                      style: _tabDayTextStyle,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "${dayConverter(DateTime.now().subtract(Duration(days: 3)).weekday)}",
                      style: _tabWeekdayTextStyle,
                    ),
                  ],
                ),
              ),
              Tab(
                child: Column(
                  children: [
                    Text(
                      "${DateTime.now().subtract(Duration(days: 2)).day}",
                      style: _tabDayTextStyle,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "${dayConverter(DateTime.now().subtract(Duration(days: 2)).weekday)}",
                      style: _tabWeekdayTextStyle,
                    ),
                  ],
                ),
              ),
              Tab(
                child: Column(
                  children: [
                    Text(
                      "${DateTime.now().subtract(Duration(days: 1)).day}",
                      style: _tabDayTextStyle,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "${dayConverter(DateTime.now().subtract(Duration(days: 1)).weekday)}",
                      style: _tabWeekdayTextStyle,
                    ),
                  ],
                ),
              ),
            ],
            indicator: MD2Indicator(
                indicatorHeight: 4,
                indicatorColor: Colors.blueGrey[400]!,
                indicatorSize: MD2IndicatorSize.normal),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 16,
              left: 16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Upcoming sessions",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                SizedBox(height: 16),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 3,
                  child: Container(
                    decoration: BoxDecoration(color: Colors.grey),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width / 1.3,
                          decoration: BoxDecoration(color: Colors.blue),
                          child: Stack(
                            children: [
                              Positioned(child: Placeholder()),
                              Positioned(child: Placeholder()),
                            ],
                          ),
                        ),
                        SizedBox(width: 16),
                        Container(
                          width: MediaQuery.of(context).size.width / 1.3,
                          decoration: BoxDecoration(color: Colors.blue),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.only(top: 16, left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Featured",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                SizedBox(height: 16),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 4,
                  child: Container(
                    decoration: BoxDecoration(color: Colors.grey),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BuildSecondPage extends StatelessWidget {
  const BuildSecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class BuildSearchPage extends StatelessWidget {
  const BuildSearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
