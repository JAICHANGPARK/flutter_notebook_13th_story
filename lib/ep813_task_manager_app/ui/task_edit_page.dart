import 'package:flutter/material.dart';
import 'package:flutter_notebook_13th_story/ep813_task_manager_app/model/task.dart';

class TaskEditPage extends StatefulWidget {
  Task? task;

  TaskEditPage({Key? key, this.task}) : super(key: key);

  @override
  _TaskEditPageState createState() => _TaskEditPageState();
}

class _TaskEditPageState extends State<TaskEditPage> {
  TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                flex: 2,
                child: PhysicalModel(
                  elevation: 2,
                  color: Colors.grey,
                  child: Container(
                    color: Colors.grey[200],
                    child: Row(
                      children: [
                        Expanded(child: Row(
                          children: [
                            IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
                            Text(
                              "Back",
                            ),
                          ],
                        )),


                        Expanded(
                          child: Center(
                            child: Text(
                              "Task #${widget.task?.taskNumber}",
                              style: TextStyle(color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        
                        Expanded(child: IconButton(onPressed: () {}, icon: Icon(Icons.edit))),
                      ],
                    ),
                  ),
                )),
            Expanded(child: Placeholder(), flex: 20),
            Expanded(child: Container(
              child: Row(
                children: [
                  Expanded(child: TextField(
                    controller: _textEditingController,
                  )),
                  IconButton(onPressed: (){}, icon: Icon(Icons.send)),
                ],
              ),
            ), flex: 2),
          ],
        ),
      ),
    );
  }
}
