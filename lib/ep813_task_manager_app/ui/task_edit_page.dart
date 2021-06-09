import 'package:flutter/material.dart';
import 'package:flutter_notebook_13th_story/ep813_task_manager_app/model/task.dart';


class TaskEditPage extends StatefulWidget {
  Task? task;
  TaskEditPage({Key? key, this.task}) : super(key: key);

  @override
  _TaskEditPageState createState() => _TaskEditPageState();
}

class _TaskEditPageState extends State<TaskEditPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        iconTheme: IconTheme.of(context).copyWith(color: Colors.black),
        leading: Row(
          children: [
            IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back))
          ],
        ),
        centerTitle: true,
        title: Text("Task #${widget.task?.taskNumber}",style: TextStyle(
          color: Colors.black
        ),),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.edit)),
        ],
      ),
    );
  }
}
