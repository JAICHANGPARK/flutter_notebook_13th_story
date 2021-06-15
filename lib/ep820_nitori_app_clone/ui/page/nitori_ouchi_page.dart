import 'package:flutter/material.dart';

import '../../nitori_app_style.dart';

class NitoriOuchiPage extends StatefulWidget {
  const NitoriOuchiPage({Key? key}) : super(key: key);

  @override
  _NitoriOuchiPageState createState() => _NitoriOuchiPageState();
}

class _NitoriOuchiPageState extends State<NitoriOuchiPage> with SingleTickerProviderStateMixin{
  ScrollController? _scrollController;
  TabController? _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _scrollController =ScrollController();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        controller: _scrollController,
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              pinned: true,
              floating: true,
              backgroundColor: Colors.white,
              forceElevated: innerBoxIsScrolled,
              flexibleSpace:  FlexibleSpaceBar(
                collapseMode: CollapseMode.pin,
                centerTitle: true,
              ),
              bottom: TabBar(
                labelColor: NitoriAppStyle.mainColor,
                unselectedLabelColor: Colors.black54,
                controller: _tabController,
                indicatorColor: NitoriAppStyle.mainColor,
                indicatorWeight: 4,
                indicatorSize: TabBarIndicatorSize.label,
                tabs: [
                  Tab(
                  text: "トピックス",
                  ),
                  Tab(
                    text: "コーディネーター",
                  ),
                ],
              ),
            ),
          ];
      }, body: TabBarView(
        controller: _tabController,
        children: [
          Container(),
          Container()
        ],
      ),
        
      ),
    );
  }
}
