import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class CryptoWalletHomePage extends StatefulWidget {
  CryptoWalletHomePage({Key? key}) : super(key: key);

  @override
  _CryptoWalletHomePageState createState() => _CryptoWalletHomePageState();
}

class _CryptoWalletHomePageState extends State<CryptoWalletHomePage>
with SingleTickerProviderStateMixin{

  TabController? _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(child: Stack(
              children: [




              ],
            ), flex: 4,),
            Expanded(
              flex: 2,
              child:Column(
                children: [
                  TabBar(tabs: [Tab(text: "Watchlist",),
                    Tab(text: "Movers",),
                    Tab(text: "Rewards",),
                    Tab(text: "News",)]),
                  Expanded(
                    child: TabBarView(children: [
                      Container(color: Colors.red,),
                      Container(color: Colors.blue,),
                      Container(color: Colors.green,),
                      Container(color: Colors.yellow,),
                    ]),
                  ),
                ],
              )
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(onPressed: (){}, icon: Icon(Ionicons.wallet_outline)),
              IconButton(onPressed: (){}, icon: Icon(Ionicons.pie_chart)),
              FloatingActionButton(onPressed: (){}, child: Icon(Icons.my_location_outlined),),
              IconButton(onPressed: (){}, icon: Icon(Ionicons.stats_chart_outline)),
              IconButton(onPressed: (){}, icon: Icon(Ionicons.settings_outline)),
            ],
          ),
        ),
      ),
    );
  }
}