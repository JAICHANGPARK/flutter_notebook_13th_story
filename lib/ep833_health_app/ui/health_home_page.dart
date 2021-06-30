import 'package:flutter/material.dart';

class HealthHomePage extends StatefulWidget {
  const HealthHomePage({Key? key}) : super(key: key);

  @override
  _HealthHomePageState createState() => _HealthHomePageState();
}

class _HealthHomePageState extends State<HealthHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(child: Container(
            height: 72,

          ), left: 0, right: 0, bottom: 0,
          ),
        ],
      ),
    );
  }
}
