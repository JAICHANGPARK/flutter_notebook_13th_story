import 'package:flutter/material.dart';

class SnackProductDetailPage extends StatefulWidget {
  final String mainImg;

  SnackProductDetailPage({Key? key, required this.mainImg}) : super(key: key);

  @override
  _SnackProductDetailPageState createState() => _SnackProductDetailPageState();
}

class _SnackProductDetailPageState extends State<SnackProductDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [Expanded(child: Placeholder()), Expanded(child: Placeholder())],
        ),
      ),
    );
  }
}
