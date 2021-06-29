import 'package:flutter/material.dart';

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
                      child: Column(
                    children: [
                      Text("Welcome to"),
                      Text("Ideate Fit"),
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
