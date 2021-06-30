import 'package:flutter/material.dart';
import 'package:flutter_notebook_13th_story/ep833_health_app/health_app_style.dart';

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
          Positioned(
            child: Container(
              height: 72,
              decoration: BoxDecoration(
                color: Color(0xffF7F8F7),
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(17),
                  topLeft: Radius.circular(17),
                ),
              ),
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 101,
                    decoration: BoxDecoration(
                      color: ColorSystem.green,
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(17)
                    ),
                  )
                ],
              ),
            ),
            left: 0,
            right: 0,
            bottom: 0,
          ),
        ],
      ),
    );
  }
}
