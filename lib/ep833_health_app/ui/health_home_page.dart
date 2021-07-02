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
  int _bottomIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
                bottom: 0,
                top: 24,
                left: 16,
                right: 0,
                child: Container(
                  color: Colors.grey[300],
                  child: ListView(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 40,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(9.95),
                                  border: Border.all(color: Colors.black)),
                              padding: EdgeInsets.symmetric(horizontal: 8),
                              child: Center(
                                child: Text(
                                  "Hello, Dream Walker",
                                  style: GoogleFonts.kanit(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 18),
                                ),
                              ),
                            ),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(9.95),
                                  border: Border.all(color: Colors.black)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SvgPicture.asset(
                                  HealthAppString.NOTIFICATION_IMG,
                                  color: Colors.black,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Text(
                        "Today's Challenge",
                        style: GoogleFonts.kanit(fontSize: 36),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: Column(
                          children: [
                            Container(
                              height: 84,
                              width: 364,
                              decoration: BoxDecoration(
                                  color: ColorSystem.yellow,
                                  borderRadius: BorderRadius.circular(26.3),
                                  border: Border.all(color: Colors.black)),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Container(
                              height: 84,
                              width: 364,
                              decoration: BoxDecoration(
                                  color: ColorSystem.white,
                                  borderRadius: BorderRadius.circular(26.3),
                                  border: Border.all(color: Colors.black)),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Container(
                              height: 84,
                              width: 364,
                              decoration: BoxDecoration(
                                  color: ColorSystem.white,
                                  borderRadius: BorderRadius.circular(26.3),
                                  border: Border.all(color: Colors.black)),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Water Tracker",
                              style: GoogleFonts.kanit(fontSize: 24),
                            ),
                            Text(
                              "2/5",
                              style: GoogleFonts.kanit(fontSize: 24),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      SizedBox(
                        height: 99,
                        width: double.infinity,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 16),
                              height: 99,
                              width: 99,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(26.3),
                                  border: Border.all(color: Colors.black)),
                              child: Row(
                                children: [
                                  Container(
                                    height: 64,
                                    width: 64,
                                    decoration: BoxDecoration(
                                      color: 
                                    ),
                                  )
                                ],
                              )
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 16),
                              height: 99,
                              width: 99,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(26.3),
                                  border: Border.all(color: Colors.black)),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 16),
                              height: 99,
                              width: 99,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(26.3),
                                  border: Border.all(color: Colors.black)),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 16),
                              height: 99,
                              width: 99,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(26.3),
                                  border: Border.all(color: Colors.black)),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )),
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
                      child: _bottomIndex == 0
                          ? GestureDetector(
                              onTap: () {
                                setState(() {
                                  _bottomIndex = 0;
                                });
                              },
                              child: Container(
                                  height: 50,
                                  width: 101,
                                  decoration: BoxDecoration(
                                      color: ColorSystem.green,
                                      border: Border.all(color: Colors.black),
                                      borderRadius: BorderRadius.circular(17)),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      SvgPicture.asset(
                                          HealthAppString.DISCOVERY_IMG),
                                      Text(
                                        "Home",
                                        style: GoogleFonts.kanit(fontSize: 18),
                                      )
                                    ],
                                  )),
                            )
                          : GestureDetector(
                              onTap: () {
                                setState(() {
                                  _bottomIndex = 0;
                                });
                              },
                              child: SvgPicture.asset(
                                  HealthAppString.DISCOVERY_IMG)),
                    ),
                    Expanded(
                        child: _bottomIndex == 1
                            ? GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _bottomIndex = 1;
                                  });
                                },
                                child: Container(
                                    height: 50,
                                    width: 101,
                                    decoration: BoxDecoration(
                                        color: ColorSystem.green,
                                        border: Border.all(color: Colors.black),
                                        borderRadius:
                                            BorderRadius.circular(17)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        SvgPicture.asset(
                                            HealthAppString.CHART_IMG),
                                        Text(
                                          "Chart",
                                          style:
                                              GoogleFonts.kanit(fontSize: 18),
                                        )
                                      ],
                                    )),
                              )
                            : GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _bottomIndex = 1;
                                  });
                                },
                                child: SvgPicture.asset(
                                    HealthAppString.CHART_IMG))),
                    Expanded(
                        child: _bottomIndex == 2
                            ? GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _bottomIndex = 2;
                                  });
                                },
                                child: Container(
                                    height: 50,
                                    width: 101,
                                    decoration: BoxDecoration(
                                        color: ColorSystem.green,
                                        border: Border.all(color: Colors.black),
                                        borderRadius:
                                            BorderRadius.circular(17)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        SvgPicture.asset(
                                            HealthAppString.PROFILE_IMG),
                                        Text(
                                          "Profile",
                                          style:
                                              GoogleFonts.kanit(fontSize: 18),
                                        )
                                      ],
                                    )),
                              )
                            : GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _bottomIndex = 2;
                                  });
                                },
                                child: SvgPicture.asset(
                                    HealthAppString.PROFILE_IMG))),
                  ],
                ),
              ),
              left: 0,
              right: 0,
              bottom: 0,
            ),
          ],
        ),
      ),
    );
  }
}
