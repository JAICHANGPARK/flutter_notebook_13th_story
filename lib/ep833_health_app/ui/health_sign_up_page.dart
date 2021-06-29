import 'package:flutter/material.dart';
import 'package:flutter_notebook_13th_story/ep833_health_app/health_app_style.dart';
import 'package:google_fonts/google_fonts.dart';

class HealthSignUpPage extends StatefulWidget {
  const HealthSignUpPage({Key? key}) : super(key: key);

  @override
  _HealthSignUpPageState createState() => _HealthSignUpPageState();
}

class _HealthSignUpPageState extends State<HealthSignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                      bottom: 42,
                      left: 112,
                      right: 112,
                      child: Center(
                        child: Container(
                          height: 16,
                          decoration: BoxDecoration(
                            color: ColorSystem.yellow,
                          ),
                        ),
                      )),
                  Positioned(
                      left: 0,
                      right: 0,
                      top: 0,
                      bottom: 0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Welcome to",
                            style: GoogleFonts.kanit(fontSize: 38),
                          ),
                          Text(
                            "Ideate Fit",
                            style: GoogleFonts.kanit(fontSize: 38),
                          ),
                        ],
                      )),
                ],
              ),
              flex: 4,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 64,
                    width: 364,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(17)),
                    child: Center(
                      child: Text(
                        "Continue with Apple",
                        style: GoogleFonts.kanit(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Container(
                      height: 64,
                      width: 364,
                      decoration: BoxDecoration(
                          color: ColorSystem.blue,
                          borderRadius: BorderRadius.circular(17)),
                      child: Center(
                        child: Text(
                          "Continue with Google",
                          style: GoogleFonts.kanit(fontSize: 18, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 64,
                    width: 364,
                    decoration: BoxDecoration(
                        color: ColorSystem.darkBlue,
                        borderRadius: BorderRadius.circular(17)),
                    child: Center(
                      child: Text(
                        "Continue with Facebook",
                        style: GoogleFonts.kanit(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
              flex: 7,
            ),
            Expanded(
              child: Stack(
                children: [  Center(
                  child: Container(
                    height: 8,
                    width: 24,
                    color: ColorSystem.yellow,
                  ),
                ),
                  Center(
                    child: Text("Or",style:  GoogleFonts.kanit(fontSize: 18, color: Colors.black)),
                  ),

                ],
              ),
              flex: 1,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 64,
                    width: 364,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(17)),
                    child: Center(
                      child: Text(
                        "Continue with Apple",
                        style: GoogleFonts.kanit(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    height: 64,
                    width: 364,
                    decoration: BoxDecoration(
                        color: ColorSystem.blue,
                        borderRadius: BorderRadius.circular(17)),
                    child: Center(
                      child: Text(
                        "Continue with Google",
                        style: GoogleFonts.kanit(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    height: 64,
                    width: 364,
                    decoration: BoxDecoration(
                        color: ColorSystem.darkBlue,
                        borderRadius: BorderRadius.circular(17)),
                    child: Center(
                      child: Text(
                        "Continue with Facebook",
                        style: GoogleFonts.kanit(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              flex: 8,
            ),
            Expanded(child: Placeholder()),
          ],
        ),
      ),
    );
  }
}
