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
                    ),
                    left: 0,
                    top: 0,
                    bottom: 200,
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
                        tabs: [Tab(text: "Watchlist"), Tab(text: "Movers"), Tab(text: "Rewards"), Tab(text: "News")]),
                    Expanded(
                      child: TabBarView(controller: _tabController, children: [
                        Container(color: Colors.red),
                        Container(color: Colors.blue),
                        Container(color: Colors.green),
                        Container(color: Colors.yellow),
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
