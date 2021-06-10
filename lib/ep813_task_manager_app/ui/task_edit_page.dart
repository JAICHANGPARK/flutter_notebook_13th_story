import 'package:flutter/material.dart';
import 'package:flutter_notebook_13th_story/ep813_task_manager_app/model/task.dart';
import 'package:get/get.dart';

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
                    color: Colors.grey[100],
                    child: Row(
                      children: [
                        Expanded(
                            child: Row(
                          children: [
                            IconButton(
                                onPressed: () {
                                  Get.back();
                                },
                                icon: Icon(Icons.arrow_back)),
                            Text(
                              "Back",
                              style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.normal),
                            ),
                          ],
                        )),
                        Expanded(
                          child: Center(
                            child: Text(
                              "Task #${widget.task?.taskNumber}",
                              style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Expanded(
                            child: Align(
                                alignment: Alignment.centerRight,
                                child: IconButton(onPressed: () {}, icon: Icon(Icons.edit)))),
                      ],
                    ),
                  ),
                )),
            Expanded(child: Column(
              
              children: [

              ],
            ), flex: 20),
            Expanded(
                child: Container(
                  padding: EdgeInsets.only(bottom: 8, left: 8, right: 8),
                  child: Row(
                    children: [
                      Expanded(
                          child: TextField(
                        controller: _textEditingController,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Add a comment...",
                            hintStyle: TextStyle(color: Colors.black54)),
                      )),
                      IconButton(
                          onPressed: () {
                            if (_textEditingController.text.length > 0) {
                              print(_textEditingController.text);
                            }
                          },
                          icon: Icon(Icons.send)),
                    ],
                  ),
                ),
                flex: 2),
          ],
        ),
      ),
    );
  }
}
