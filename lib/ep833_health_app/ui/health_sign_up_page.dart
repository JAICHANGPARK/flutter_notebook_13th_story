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
            Expanded(child: Placeholder()),
            Expanded(child: Placeholder()),
            Expanded(child: Placeholder()),
            Expanded(child: Placeholder()),
          ],
        ),
      ),
    );
  }
}
