import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:md2_tab_indicator/md2_tab_indicator.dart';

class MeditationClassHomePage extends StatefulWidget {
  const MeditationClassHomePage({Key? key}) : super(key: key);

  @override
  _MeditationClassHomePageState createState() => _MeditationClassHomePageState();
}

class _MeditationClassHomePageState extends State<MeditationClassHomePage> with SingleTickerProviderStateMixin {
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
                  decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(16), boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.15), offset: Offset(0, 2), blurRadius: 1, spreadRadius: 1)
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
                          builder: (BuildContext context, int value, Widget? child) {
                            return Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Ionicons.home_outline,
                                  color: value == 0 ? Colors.black : Colors.black45,
                                ),
                                SizedBox(height: 8),
                                Text("Home",
                                    style: TextStyle(fontSize: 10, color: value == 0 ? Colors.black : Colors.black45)),
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
                          builder: (BuildContext context, int value, Widget? child) {
                            return Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Ionicons.calendar_outline,
                                  color: value == 1 ? Colors.black : Colors.black45,
                                ),
                                SizedBox(height: 8),
                                Text("Upcoming",
                                    style: TextStyle(fontSize: 10, color: value == 1 ? Colors.black : Colors.black45)),
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
                          builder: (BuildContext context, int value, Widget? child) {
                            return Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Ionicons.search,
                                  color: value == 2 ? Colors.black : Colors.black45,
                                ),
                                SizedBox(height: 8),
                                Text("Search",
                                    style: TextStyle(fontSize: 10, color: value == 2 ? Colors.black : Colors.black45)),
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
                          builder: (BuildContext context, int value, Widget? child) {
                            return Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Ionicons.notifications_outline,
                                  color: value == 3 ? Colors.black : Colors.black45,
                                ),
                                SizedBox(height: 8),
                                Text("Notifications",
                                    style: TextStyle(fontSize: 10, color: value == 3 ? Colors.black : Colors.black45)),
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
                          builder: (BuildContext context, int value, Widget? child) {
                            return Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Ionicons.person_outline,
                                  color: value == 4 ? Colors.black : Colors.black45,
                                ),
                                SizedBox(height: 8),
                                Text("Profile",
                                    style: TextStyle(fontSize: 10, color: value == 4 ? Colors.black : Colors.black45)),
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
                  backgroundImage: NetworkImage("https://avatars.githubusercontent.com/u/19484515?v=4"),
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
                indicatorHeight: 4, indicatorColor: Colors.blueGrey[400]!, indicatorSize: MD2IndicatorSize.normal),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16, left: 16),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Upcoming sessions", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  SizedBox(height: 16),
                  SizedBox(
                      height: MediaQuery.of(context).size.height / 2.8,
                      child: Stack(
                        children: [
                          Container(
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width / 1.3,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: Colors.red,
                                              borderRadius: BorderRadius.circular(16),
                                              image: DecorationImage(
                                                image: NetworkImage(
                                                    "https://cdn.pixabay.com/photo/2018/02/06/14/07/dance-3134828__340.jpg"),
                                                fit: BoxFit.cover,
                                              )),
                                        ),
                                        left: 0,
                                        right: 0,
                                        bottom: 70,
                                        top: 0,
                                      ),
                                      Positioned(
                                        child: Container(
                                          height: 140,
                                          child: Card(
                                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                                            child: Stack(
                                              children: [
                                                Positioned(
                                                  child: CircleAvatar(),
                                                  right: 8,
                                                  top: 8,
                                                ),
                                                Positioned(
                                                    left: 16,
                                                    top: 16,
                                                    child: Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Text(
                                                          "9 am - 10:30 am",
                                                          style: TextStyle(fontWeight: FontWeight.bold),
                                                        ),
                                                        Padding(
                                                          padding: const EdgeInsets.symmetric(vertical: 4),
                                                          child: Text("Yoga for Beginners"),
                                                        ),
                                                        Text("with Emily Cassel"),
                                                        SizedBox(
                                                          height: 8,
                                                        ),
                                                        Row(
                                                          children: [
                                                            Container(
                                                              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                                                              decoration: BoxDecoration(
                                                                  color: Colors.green,
                                                                  borderRadius: BorderRadius.circular(16)),
                                                              child: Text(
                                                                "Begginer",
                                                                style: TextStyle(fontSize: 10),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding: const EdgeInsets.symmetric(horizontal: 4),
                                                              child: Container(
                                                                padding:
                                                                    EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                                                                decoration: BoxDecoration(
                                                                    color: Colors.blue[200]!,
                                                                    borderRadius: BorderRadius.circular(16)),
                                                                child: Text(
                                                                  "Outdoor",
                                                                  style: TextStyle(fontSize: 10),
                                                                ),
                                                              ),
                                                            ),
                                                            Container(
                                                              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                                                              decoration: BoxDecoration(
                                                                  color: Colors.indigo[200],
                                                                  borderRadius: BorderRadius.circular(16)),
                                                              child: Text(
                                                                "Rest",
                                                                style: TextStyle(fontSize: 10),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Row(
                                                          children: [
                                                            Icon(
                                                              Icons.location_on_outlined,
                                                              size: 12,
                                                            ),
                                                            Text("Manhanttan"),
                                                            SizedBox(
                                                              width: 16,
                                                            ),
                                                            Icon(Icons.airplane_ticket),
                                                            Text("\$15.00"),
                                                          ],
                                                        )
                                                      ],
                                                    ))
                                              ],
                                            ),
                                          ),
                                        ),
                                        left: 24,
                                        right: 24,
                                        bottom: 0,
                                      ),
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
                          Positioned(
                            bottom: 0,
                            left: 0,
                            right: 0,
                            child: Container(
                              height: 64,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  gradient: LinearGradient(
                                      begin: Alignment.bottomCenter,
                                      end: Alignment.topCenter,
                                      stops: [
                                        0.2,
                                        0.5,
                                        1
                                      ],
                                      colors: [
                                        Colors.white.withOpacity(0.4),
                                        Colors.white.withOpacity(0.2),
                                        Colors.white.withOpacity(0.1)
                                      ])),
                            ),
                          ),
                        ],
                      )),
                ],
              ),
            ),
          ),
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.only(top: 16, left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Featured", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
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
