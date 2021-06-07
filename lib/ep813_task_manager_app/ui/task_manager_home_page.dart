import 'package:flutter/material.dart';

class TaskManagerHomePage extends StatefulWidget {
  const TaskManagerHomePage({Key? key}) : super(key: key);

  @override
  _TaskManagerHomePageState createState() => _TaskManagerHomePageState();
}

class _TaskManagerHomePageState extends State<TaskManagerHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text("My Tasks"),
        actions: [
          IconButton(onPressed: (){}, icon:  Icon(Icons.filter_alt_outlined))

        ],
        bottom: TabBar(tabs: [
          Tab(child: Column(
            children: [
              Container(
                child: Center(
                  child: Text("3"),
                ),
              )
            ],
          ),)
        ],

        ),
      ),
    );
  }
}