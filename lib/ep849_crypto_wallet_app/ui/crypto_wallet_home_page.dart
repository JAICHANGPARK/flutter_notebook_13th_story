import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class CryptoWalletHomePage extends StatefulWidget {
  CryptoWalletHomePage({Key? key}) : super(key: key);

  @override
  _CryptoWalletHomePageState createState() => _CryptoWalletHomePageState();
}

class _CryptoWalletHomePageState extends State<CryptoWalletHomePage> with SingleTickerProviderStateMixin {
  TabController? _tabController;
  final Color _backgroundColor = Color(0xffede7f7);
  final Color _fabColor = Color(0xff491a90);
  final Color _topColor = Color(0xff1b2052);
  final Color _bottomColor = Color(0xff141645);
  final Color _blueColor = Color(0xff93def9);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 7,
              child: Stack(
                children: [
                  Positioned(
                    child: Container(
                      decoration: BoxDecoration(
                          color: _bottomColor, borderRadius: BorderRadius.only(bottomLeft: Radius.circular(48))),
                    ),
                    left: 0,
                    top: 0,
                    bottom: 8,
                    right: 0,
                  ),
                  Positioned(
                    child: Container(
                      decoration: BoxDecoration(
                          color: _topColor, borderRadius: BorderRadius.only(bottomLeft: Radius.circular(48))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 42,
                                  width: 42,
                                  decoration:
                                      BoxDecoration(color: _bottomColor, borderRadius: BorderRadius.circular(8)),
                                  child: Icon(
                                    Icons.menu,
                                    color: Colors.white,
                                  ),
                                ),
                                Container(
                                  height: 42,
                                  width: 42,
                                  decoration:
                                      BoxDecoration(color: _bottomColor, borderRadius: BorderRadius.circular(8)),
                                  child: Icon(
                                    Icons.notifications_none_outlined,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "TOTAL BALANCE",
                                  style: TextStyle(color: Colors.white.withOpacity(0.4)),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text.rich(
                                  TextSpan(children: [
                                    TextSpan(
                                        text: "\$", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                                    TextSpan(
                                        text: "27,915.55",
                                        style:
                                            TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 38))
                                  ]),
                                  textAlign: TextAlign.center,
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 12, left: 16),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 3,
                                      width: 100,
                                      decoration: BoxDecoration(color: _blueColor),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Text("ETH",
                                        style: TextStyle(color: _blueColor, fontWeight: FontWeight.bold, fontSize: 10))
                                  ],
                                ),
                                SizedBox(width: 8),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 3,
                                      width: 72,
                                      decoration: BoxDecoration(color: Colors.brown[100]),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Text("BTC",
                                        style: TextStyle(
                                            color: Colors.brown[100], fontWeight: FontWeight.bold, fontSize: 10))
                                  ],
                                ),
                                SizedBox(width: 8),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 3,
                                      width: 60,
                                      decoration: BoxDecoration(color: Colors.deepOrangeAccent[100]),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Text("XRP",
                                        style: TextStyle(
                                            color: Colors.deepOrangeAccent[100],
                                            fontWeight: FontWeight.bold,
                                            fontSize: 10))
                                  ],
                                ),
                                SizedBox(width: 8),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 3,
                                      width: 30,
                                      decoration: BoxDecoration(color: Colors.blueGrey[200]),
                                    ),
                                    SizedBox(height: 4),
                                    Text("OTHERS",
                                        style: TextStyle(
                                            color: Colors.blueGrey[200], fontWeight: FontWeight.bold, fontSize: 10))
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    left: 0,
                    top: 0,
                    bottom: 180,
                    right: 0,
                  ),
                  Positioned(
                    child: Center(
                      child: Container(
                        height: 16,
                        width: 32,
                        decoration: BoxDecoration(
                            color: _bottomColor,
                            border: Border.all(color: Colors.white, width: 4),
                            borderRadius: BorderRadius.circular(8)),
                        child: Row(
                          children: [
                            Expanded(child: Placeholder()),
                            Expanded(child: Placeholder()),
                          ],
                        ),
                      ),
                    ),
                    left: 0,
                    right: 0,
                    bottom: 0,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Expanded(
                flex: 4,
                child: Column(
                  children: [
                    TabBar(
                        controller: _tabController,
                        labelColor: Colors.black,
                        unselectedLabelColor: Colors.black,
                        indicatorSize: TabBarIndicatorSize.label,
                        indicatorColor: _bottomColor,
                        tabs: [Tab(text: "Watchlist"), Tab(text: "Movers"), Tab(text: "Rewards"), Tab(text: "News")]),
                    Expanded(
                      child: TabBarView(controller: _tabController, children: [
                        Container(color: _backgroundColor),
                        Container(color: _backgroundColor),
                        Container(color: _backgroundColor),
                        Container(color: _backgroundColor),
                      ]),
                    ),
                  ],
                )),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: _backgroundColor,
        child: Container(
          color: _backgroundColor,
          padding: EdgeInsets.symmetric(vertical: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(onPressed: () {}, icon: Icon(Ionicons.wallet_outline)),
              IconButton(onPressed: () {}, icon: Icon(Ionicons.pie_chart)),
              FloatingActionButton(
                onPressed: () {},
                backgroundColor: _fabColor,
                child: Icon(Icons.my_location_outlined),
              ),
              IconButton(onPressed: () {}, icon: Icon(Ionicons.stats_chart_outline)),
              IconButton(onPressed: () {}, icon: Icon(Ionicons.settings_outline)),
            ],
          ),
        ),
      ),
    );
  }
}
