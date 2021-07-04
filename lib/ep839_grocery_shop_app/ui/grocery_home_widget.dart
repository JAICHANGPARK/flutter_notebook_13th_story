
import 'package:flutter/material.dart';

class GroceryHomeWidget extends StatefulWidget {
  const GroceryHomeWidget({Key? key}) : super(key: key);

  @override
  _GroceryHomeWidgetState createState() => _GroceryHomeWidgetState();
}

class _GroceryHomeWidgetState extends State<GroceryHomeWidget> {
   Color _accentColor =  Color(0xff52C66C);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: _accentColor,
              ),
              Container(),
              CircleAvatar(),
            ],
          )
        ],
      ),
    );
  }
}
