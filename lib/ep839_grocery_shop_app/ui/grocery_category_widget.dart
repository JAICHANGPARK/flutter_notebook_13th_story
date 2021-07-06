import 'package:flutter/material.dart';

class GroceryCategoryWidget extends StatefulWidget {
  GroceryCategoryWidget({Key? key}) : super(key: key);

  @override
  _GroceryCategoryWidgetState createState() => _GroceryCategoryWidgetState();
}

class _GroceryCategoryWidgetState extends State<GroceryCategoryWidget> {
  Color _accentColor = Color(0xff52C66C);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            CircleAvatar(
              backgroundColor: _accentColor,
              foregroundColor: Colors.white,
              child: Center(child: Icon(Icons.keyboard_arrow_left, size: 28,)),
            ),
            Text("Categories", style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: _accentColor
            ),)

          ],
        ),
      ),
    );
  }
}