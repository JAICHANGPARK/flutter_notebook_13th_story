import 'package:flutter/material.dart';
import 'package:flutter_notebook_13th_story/ep833_health_app/ui/health_onboard_page.dart';
import 'package:get/get.dart';


class HealthApp extends StatelessWidget {
  const HealthApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HealthOnboardPage(),
    );
  }
}
