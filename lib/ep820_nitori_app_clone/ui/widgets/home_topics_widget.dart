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
                          Positioned(child: buildSnsTypeWidget(nitoriTopicItems[index].type!),
                          left: 8,
                          top: 8,),
                      ],
                    ),
                  ),
                  flex: 4,
                ),
                SizedBox(height: 4,),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(child: Placeholder(),flex: 8,),
                      Expanded(child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                            CircleAvatar(
                              backgroundColor: Colors.grey[300],
                              child: nitoriTopicItems[index].isLike! ? Icon(Icons.favorite) :Icon(Icons.favorite_border)  ,
                              foregroundColor: nitoriTopicItems[index].isLike! ? Colors.red[400] : Colors.grey,
                            )
                        ],
                      ), flex: 3,),

                    ],
                  ),
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
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Colors.orange)
        ),
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        child: Center(
          child: Text("記事",style: TextStyle(
            fontSize: 11,
            color: Colors.orange
          ),)
        ),
      );
    }
    else if(snsType == SnsType.twitter || snsType == SnsType.instagram){
      return CircleAvatar(
        backgroundColor: Colors.white,
        radius: 14,
      );

    }
    else{
      return Container();
    }
  }
}
