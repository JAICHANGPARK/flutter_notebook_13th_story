import 'package:flutter/material.dart';
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
                      ))
                ],
              ),
              flex: 4,
            ),
            Expanded(
              child: Placeholder(),
              flex: 5,
            ),
            Expanded(
              child: Placeholder(),
              flex: 1,
            ),
            Expanded(
              child: Placeholder(),
              flex: 6,
            ),
            Expanded(child: Placeholder()),
          ],
        ),
      ),
    );
  }
}
