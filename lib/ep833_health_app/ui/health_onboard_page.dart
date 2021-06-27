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
  late PageController _pageController;
  int _pageIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(initialPage: _pageIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorSystem.yellow,
      body: SafeArea(
        child: Column(children: [
          Expanded(
            child: Placeholder(),
            flex: 6,
          ),
          Expanded(
            child: PageView(
              children: [
                SvgPicture.asset(
                  HealthAppString.JOGGING_IMG,
                  fit: BoxFit.cover,
                ),
              ],
            ),
            flex: 14,
          ),
          Expanded(
            child: Row(
              children: [
                Container(
                  width: 20,
                  height: 7,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: Colors.white,
                      border: Border.all(color: Colors.black, width: 1)),
                ),
                SizedBox(width: 16,),
                Container(
                  width: 20,
                  height: 7,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: ColorSystem.green,
                      border: Border.all(color: Colors.black, width: 1)),
                ),
                SizedBox(width: 16,),
                Container(
                  width: 20,
                  height: 7,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: ColorSystem.green,
                      border: Border.all(color: Colors.black, width: 1)),
                )
              ],
            ),
            flex: 1,
          ),
          Expanded(
            child: Placeholder(),
            flex: 4,
          ),
        ]),
      ),
    );
  }
}
