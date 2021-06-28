import 'package:flutter/material.dart';
import 'package:flutter_notebook_13th_story/ep833_health_app/health_app_string.dart';
import 'package:flutter_notebook_13th_story/ep833_health_app/health_app_style.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

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
            flex: 6,
            child: Stack(
              children: [
                Positioned(
                    left: 0,
                    right: 0,
                    top: 0,
                    bottom: 0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "A complete",
                          style: GoogleFonts.kanit(
                            fontSize: 42,
                          ),
                        ),
                        Text(
                          "App for your",
                          style: GoogleFonts.kanit(
                            fontSize: 40,
                          ),
                        ),
                        Text(
                          "health",
                          style: GoogleFonts.kanit(
                            fontSize: 42,
                          ),
                        ),
                      ],
                    ))
              ],
            ),

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
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 20,
                  height: 7,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: Colors.white,
                      border: Border.all(color: Colors.black, width: 1)),
                ),
                SizedBox(
                  width: 8,
                ),
                Container(
                  width: 20,
                  height: 7,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: ColorSystem.green,
                      border: Border.all(color: Colors.black, width: 1)),
                ),
                SizedBox(
                  width: 8,
                ),
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
          SizedBox(
            height: 16,
          ),
          Expanded(
            child: Column(
              children: [
                Container(
                  height: 64,
                  width: 364,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(17),
                    color: ColorSystem.green,
                  ),
                  child: Center(
                    child: Text(
                      "Try for free",
                      style: GoogleFonts.kanit(fontSize: 18),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already Have an Account?",
                      style: GoogleFonts.kanit(fontSize: 18),
                    ),
                    Text(
                      "Log In",
                      style: GoogleFonts.kanit(
                          fontSize: 18, decoration: TextDecoration.underline),
                    ),
                  ],
                )
              ],
            ),
            flex: 4,
          ),
        ]),
      ),
    );
  }
}
