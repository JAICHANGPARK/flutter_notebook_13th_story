import 'package:flutter/material.dart';

class NitoriOuchiPage extends StatefulWidget {
  const NitoriOuchiPage({Key? key}) : super(key: key);

  @override
  _NitoriOuchiPageState createState() => _NitoriOuchiPageState();
}

class _NitoriOuchiPageState extends State<NitoriOuchiPage> {
  ScrollController? _scrollController;
  TabController? _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {  }, body: TabBarView(),
        
      ),
    );
  }
}
