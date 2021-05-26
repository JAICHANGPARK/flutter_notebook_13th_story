import 'package:flutter/material.dart';

import 'snack_product_main_page.dart';



class SnackProductApp extends StatelessWidget {
  const SnackProductApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      title: "Flutter Live Coding",
      home: SnackProductMainPage(),
    );
  }
}