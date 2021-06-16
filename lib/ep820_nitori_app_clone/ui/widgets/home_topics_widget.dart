import 'package:flutter/material.dart';


class HomeTopicsWidget extends StatefulWidget {
  const HomeTopicsWidget({Key? key}) : super(key: key);

  @override
  _HomeTopicsWidgetState createState() => _HomeTopicsWidgetState();
}

class _HomeTopicsWidgetState extends State<HomeTopicsWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (context, index){

          return Container(
            decoration: BoxDecoration(
              color: Colors.grey
            ),
            child: Column(
              children: [
                Expanded(child: Container(
                  color: Colors.greenAccent,
                ), flex: 4,),
                Expanded(child: Placeholder(),flex: 2,),
              ],
            ),
          );
        }, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.7,
        crossAxisSpacing: 4,
        mainAxisSpacing: 4
      ),
      ),
    );
  }
}
