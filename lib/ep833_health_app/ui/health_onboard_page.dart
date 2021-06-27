import 'package:flutter/material.dart';
import 'package:flutter_notebook_13th_story/ep833_health_app/health_app_string.dart';
import 'package:flutter_notebook_13th_story/ep833_health_app/health_app_style.dart';
import 'package:flutter_svg/flutter_svg.dart';


class HealthOnboardPage extends StatefulWidget {
  const HealthOnboardPage({Key? key}) : super(key: key);

  @override
  _HealthOnboardPageState createState() => _HealthOnboardPageState();
}

class _HealthOnboardPageState extends State<HealthOnboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorSystem.yellow,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(child: Placeholder(), flex: 6,),
            Expanded(child: PageView(
              children: [
                SvgPicture.asset(HealthAppString.JOGGING_IMG,
                fit: BoxFit.cover,),
              ],
            ), flex: 14,),
            Expanded(child: Row(
              children: [

              ],
            ), flex: 1,),
            Expanded(child: Placeholder(), flex: 4,),
          ]
        ),
      ),
    );
  }
}
