import 'package:flutter/material.dart';
import 'package:flutter_notebook_13th_story/ep813_task_manager_app/model/task.dart';
import 'package:get/get.dart';
import 'package:timeago/timeago.dart' as timeago;

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
            Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4),
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: widget.task?.tagColor,
                              ),
                              child: Text(
                                "${widget.task?.tag}",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          Text(
                            "${timeago.format(widget.task!.datetime!)}",
                            style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        child: Text(
                          "${widget.task?.title}",
                          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        "Of course, deeply understanding your users and their needs is the foundation"
                        "of any food product. But that also means understanding all types of users"
                        "and cases",
                        style: TextStyle(fontSize: 16),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        child: Row(
                          children: [
                            Icon(Icons.calendar_today_outlined),
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Text("Deadline: "),
                            ),
                            Text(
                              "${widget.task?.startDate} - ${widget.task?.endDate}",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.grey,
                      ),
                      Text(
                        "Attachment",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: Row(
                          children: [
                            Icon(Icons.image_outlined),
                            SizedBox(
                              width: 8,
                            ),
                            Text("screenshoot_Image.png"),
                            Spacer(),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.more_horiz),
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                flex: 20),
            Expanded(
                child: PhysicalModel(
                  color: Colors.grey,
                  elevation: 2,
                  child: Container(
                    color: Colors.grey[200],
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
                ),
                flex: 2),
          ],
        ),
      ),
    );
  }
}
