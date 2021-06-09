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
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 2,
                child: Row(
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
                Text(
                  "Back",
                ),
                Spacer(),
                Expanded(
                  child: Text(
                    "Task #${widget.task?.taskNumber}",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Spacer(),
                IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
              ],
            )),
            Expanded(child: Placeholder(), flex: 20),
            Expanded(child: Placeholder(), flex: 2),

          ],
        ),
      ),
    );
  }
}















