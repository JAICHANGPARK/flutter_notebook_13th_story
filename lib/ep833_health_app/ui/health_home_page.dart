import 'package:flutter/material.dart';
import 'package:flutter_notebook_13th_story/ep833_health_app/health_app_string.dart';
import 'package:flutter_notebook_13th_story/ep833_health_app/health_app_style.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HealthHomePage extends StatefulWidget {
  const HealthHomePage({Key? key}) : super(key: key);

  @override
  _HealthHomePageState createState() => _HealthHomePageState();
}

class _HealthHomePageState extends State<HealthHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
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
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                          height: 50,
                          width: 101,
                          decoration: BoxDecoration(
                              color: ColorSystem.green,
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(17)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SvgPicture.asset(HealthAppString.DISCOVERY_IMG),
                              Text(
                                "Home",
                                style: GoogleFonts.kanit(fontSize: 18),
                              )
                            ],
                          )),
                    ),
                    Expanded(child: SvgPicture.asset(HealthAppString.CHART_IMG)),
                    Expanded(
                        child: SvgPicture.asset(HealthAppString.PROFILE_IMG)),
                  ],
                ),
              ),
              left: 0,
              right: 0,
              bottom: 0,
            ),
            Positioned(
                bottom: 0,
                top: 0,
                left: 16,
                right: 0,
                child: Container(
                  color: Colors.green,
                  child: ListView(
              children: [
                  Row(
                    children: [
                      Container(
                        height: 40,
                        width: 154,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(9.95),
                          border: Border.all(color: Colors.black)
                        ),
                      )
                    ],
                  )
              ],
            ),
                )),
          ],
        ),
      ),
    );
  }
}















