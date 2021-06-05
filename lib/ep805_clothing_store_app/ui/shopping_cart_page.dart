import 'package:flutter/material.dart';

class ShoppingChartPage extends StatefulWidget {
  const ShoppingChartPage({Key? key}) : super(key: key);

  @override
  _ShoppingChartPageState createState() => _ShoppingChartPageState();
}

class _ShoppingChartPageState extends State<ShoppingChartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.grey[100]!,
        elevation: 0,
        iconTheme: IconTheme.of(context).copyWith(color: Colors.black),
        title: Text("My Cart (3)"),
        foregroundColor: Colors.black,
      ),
    );
  }
}
