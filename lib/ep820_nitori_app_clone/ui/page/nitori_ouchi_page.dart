import 'package:flutter/material.dart';

import '../../nitori_app_style.dart';

class NitoriOuchiPage extends StatefulWidget {
  const NitoriOuchiPage({Key? key}) : super(key: key);

  @override
  _NitoriOuchiPageState createState() => _NitoriOuchiPageState();
}

class _NitoriOuchiPageState extends State<NitoriOuchiPage> with SingleTickerProviderStateMixin {
  ScrollController? _scrollController;
  TabController? _tabController;

  String? categories = "カテゴリ";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _scrollController = ScrollController();
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
              flexibleSpace: FlexibleSpaceBar(
                collapseMode: CollapseMode.pin,
                centerTitle: true,
              ),
              bottom: TabBar(
                labelColor: NitoriAppStyle.mainColor,
                unselectedLabelColor: Colors.black87,
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
        },
        body: TabBarView(
          controller: _tabController,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16, top: 8, bottom: 8),
                  child: Container(
                    height: 42,
                    width: 180,
                    decoration: BoxDecoration(color: Colors.grey[200], borderRadius: BorderRadius.circular(8)),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 48,
                          child: Stack(
                            children: [
                              Positioned(
                                child: Icon(
                                  Icons.list,
                                  size: 32,
                                  color: Colors.black45,
                                ),
                                right: 0,
                                left: 0,
                                bottom: 0,
                                top: 0,
                              ),
                              Positioned(
                                child: CircleAvatar(
                                  radius: 4,
                                  backgroundColor: Colors.red,
                                ),
                                right: 4,
                                top: 8,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        DropdownButton<String>(value: categories, isExpanded: false,
                            onChanged: (s){
                              setState(() {
                                categories = s;
                              });
                            },
                            onTap: (){

                            },
                            items: [
                          DropdownMenuItem(
                            child: Text("カテゴリ"),
                            value: "カテゴリ",
                          ),
                          DropdownMenuItem(
                            child: Text("カテゴリ2"),
                            value: "カテゴリ2",
                          )
                        ])
                      ],
                    ),
                  ),
                ),
                Expanded(child: Placeholder()),
              ],
            ),
            Container()
          ],
        ),
      ),
    );
  }
}
