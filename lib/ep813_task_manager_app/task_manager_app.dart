import 'package:flutter/material.dart';
import 'package:flutter_notebook_13th_story/ep813_task_manager_app/ui/task_manager_home_page.dart';
import 'package:get/get.dart';

class TaskManagerApp extends StatelessWidget {
  const TaskManagerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: TaskManagerHomePage(),
    );
  }
}
