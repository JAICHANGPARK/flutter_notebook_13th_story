import 'package:flutter/material.dart';
import 'package:flutter_notebook_13th_story/ep820_nitori_app_clone/ui/page/nitori_home_page.dart';
import 'package:get/get.dart';

class NitoriAppClone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: NitoriHomePage(),
    );
  }
}
