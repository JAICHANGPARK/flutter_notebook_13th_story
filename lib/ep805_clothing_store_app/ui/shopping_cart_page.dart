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
        title: Text("My Cart (3)",style: TextStyle(
          color: Colors.black
        ),),
        foregroundColor: Colors.black,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(

            children: [
              Expanded(child: Placeholder(), flex: 5,),
              Expanded(child: Placeholder(), flex: 2,),
              Expanded(child: Placeholder(), flex: 3,),
              Expanded(child: Placeholder(), flex: 2,),

            ],
          ),
        ),
      ),
    );
  }
}











