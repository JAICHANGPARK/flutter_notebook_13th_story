import 'package:flutter/material.dart';

import 'ui/cardboard_main_page.dart';

class CardboardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "CardboardApp",
      home: CardboardMainPage(),
    );
  }
}
