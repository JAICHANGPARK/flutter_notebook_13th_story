import 'package:flutter/material.dart';



class SnackProductMainPage extends StatefulWidget {
  const SnackProductMainPage({Key? key}) : super(key: key);

  @override
  _SnackProductMainPageState createState() => _SnackProductMainPageState();
}

class _SnackProductMainPageState extends State<SnackProductMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Column(
        children: [
          Expanded(child: Placeholder()),
          Expanded(child: Placeholder()),
        ],
      )
    );
  }
}
