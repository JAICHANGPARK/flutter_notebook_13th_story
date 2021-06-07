import 'package:flutter/material.dart';

class TaskManagerHomePage extends StatefulWidget {
  const TaskManagerHomePage({Key? key}) : super(key: key);

  @override
  _TaskManagerHomePageState createState() => _TaskManagerHomePageState();
}

class _TaskManagerHomePageState extends State<TaskManagerHomePage> with SingleTickerProviderStateMixin {
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
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        foregroundColor: Colors.black,
        iconTheme: IconTheme.of(context).copyWith(color: Colors.black),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "My Tasks",
          style: TextStyle(color: Colors.black),
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.filter_alt_outlined))],
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.black,
          indicatorWeight: 4,

          tabs: [
            Tab(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 16,
                    decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(4)),
                    child: Center(
                      child: Text("3"),
                    ),
                  ),
                  Text(
                    "New",
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),
            Tab(

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 18,
                    decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(4)),
                    child: Center(
                      child: Text("16"),
                    ),
                  ),
                  SizedBox(height: 4,),
                  Text(
                    "In Progress",
                    style: TextStyle(color: Colors.black, fontSize: 12.5),
                  ),
                ],
              ),
            ),
            Tab(
              child: Column(
                children: [
                  Container(
                    child: Center(
                      child: Text("3"),
                    ),
                  ),
                  Text("New"),
                ],
              ),
            ),
            Tab(
              child: Column(
                children: [
                  Container(
                    child: Center(
                      child: Text("3"),
                    ),
                  ),
                  Text("New"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
