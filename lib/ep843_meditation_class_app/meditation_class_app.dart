import 'package:flutter/material.dart';

import 'ui/meditation_class_main_page.dart';

class MeditationClassApp extends StatelessWidget {
  const MeditationClassApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MeditationClassHomePage(),
    );
  }
}
