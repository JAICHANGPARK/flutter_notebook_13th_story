import 'package:flutter/material.dart';


class HomeTopicsWidget extends StatefulWidget {
  const HomeTopicsWidget({Key? key}) : super(key: key);

  @override
  _HomeTopicsWidgetState createState() => _HomeTopicsWidgetState();
}

class _HomeTopicsWidgetState extends State<HomeTopicsWidget> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 10,
      itemBuilder: (context, index){

        return Container(
          decoration: BoxDecoration(
            color: Colors.grey
          ),
        );
      }, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      childAspectRatio: 1,
      crossAxisSpacing: 4,
      mainAxisSpacing: 4
    ),
    );
  }
}
