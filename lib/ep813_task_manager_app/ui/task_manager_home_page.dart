import 'package:flutter/material.dart';
import 'package:flutter_notebook_13th_story/ep813_task_manager_app/model/task.dart';

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
          style: TextStyle(color: Colors.black, fontSize: 18),
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
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "New",
                    style: TextStyle(color: Colors.black, fontSize: 12.5),
                  ),
                ],
              ),
            ),
            Tab(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 24,
                    decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(4)),
                    child: Center(
                      child: Text("16"),
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "In Progress",
                    style: TextStyle(color: Colors.black, fontSize: 12.5),
                  ),
                ],
              ),
            ),
            Tab(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 16,
                    decoration: BoxDecoration(color: Colors.grey[300], borderRadius: BorderRadius.circular(4)),
                    child: Center(
                      child: Text(
                        "0",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "On Review",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12.5,
                    ),
                  ),
                ],
              ),
            ),
            Tab(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 32,
                    decoration: BoxDecoration(color: Colors.grey[300], borderRadius: BorderRadius.circular(4)),
                    child: Center(
                      child: Text(
                        "256",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "Finished",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12.5,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          ListView.builder(
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: PhysicalModel(
                  color: Colors.grey[400]!,
                  elevation: 1,
                  child: Container(
                    height: 120,
                    decoration: BoxDecoration(color: Colors.white),
                  ),
                ),
              );
            },
            itemCount: taskItems.length,
          ),
          // Container(child: Center(child: Text("1"),),),

          Container(
            child: Center(
              child: Text("2"),
            ),
          ),
          Container(
            child: Center(
              child: Text("3"),
            ),
          ),
          Container(
            child: Center(
              child: Text("4"),
            ),
          ),
        ],
      ),
    );
  }
}
