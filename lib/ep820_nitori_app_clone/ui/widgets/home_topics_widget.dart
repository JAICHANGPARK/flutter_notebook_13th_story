import 'package:flutter/material.dart';


class HomeTopicsWidget extends StatefulWidget {
  const HomeTopicsWidget({Key? key}) : super(key: key);

  @override
  _HomeTopicsWidgetState createState() => _HomeTopicsWidgetState();
}

class _HomeTopicsWidgetState extends State<HomeTopicsWidget> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(crossAxisCount: 2,
    children: [

    ],);
  }
}
