import 'package:flutter/material.dart';
import 'package:flutter_notebook_13th_story/ep820_nitori_app_clone/enums/sns_type.dart';
import 'package:flutter_notebook_13th_story/ep820_nitori_app_clone/mock/nitori_topic_items.dart';

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
        itemCount: nitoriTopicItems.length,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(color: Colors.grey),
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.greenAccent,
                        image: DecorationImage(image: NetworkImage(nitoriTopicItems[index].img!),
                            fit: BoxFit.cover),),
                    child: Stack(
                      children: [

                      ],
                    ),
                  ),
                  flex: 4,
                ),
                Expanded(
                  child: Placeholder(),
                  flex: 2,
                ),
              ],
            ),
          );
        },
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 0.7, crossAxisSpacing: 4, mainAxisSpacing: 4),
      ),
    );
  }
  Widget buildSnsTypeWidget(SnsType snsType){
    if(snsType == SnsType.kiji){
      return Container(
        child: Center(
          child: Text("記事",)
        ),
      );
    }
    else if(){
      
    }
    else{
      return Container();
    }
  }
}
