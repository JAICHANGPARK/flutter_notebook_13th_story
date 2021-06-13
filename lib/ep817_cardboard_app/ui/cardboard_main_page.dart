import 'package:flutter/material.dart';
import '../model/recent_play.dart';
import '../styles/cardboard_app_style.dart';

class CardboardMainPage extends StatefulWidget {
  CardboardMainPage({Key? key}) : super(key: key);

  @override
  _CardboardMainPageState createState() => _CardboardMainPageState();
}

class _CardboardMainPageState extends State<CardboardMainPage> {

  List<RecentPlay> recentPlayItems = [
    RecentPlay(
      title: "Grail",
      subtitle: "A brief description of the board game can maybe be put here.",
      img: "https://cdn.pixabay.com/photo/2019/10/15/10/31/gin-4551299__340.jpg",
      rate: 4.8
    ),
    RecentPlay(
        title: "Ticket to Ride",
        subtitle: "A brief description of the board game can maybe be put here.",
        img: "https://upload.wikimedia.org/wikipedia/en/9/92/Ticket_to_Ride_Board_Game_Box_EN.jpg",
        rate: 4.8
    ),
    RecentPlay(
        title: "Glooomhaven",
        subtitle: "A brief description of the board game can maybe be put here.",
        img: "https://849310.smushcdn.com/1803394/wp-content/uploads/2017/12/gloomhaven-overview-header-1024x576.jpg?lossy=1&strip=1&webp=1",
        rate: 4.8
    ),
    RecentPlay(
        title: "Wingspan",
        subtitle: "A brief description of the board game can maybe be put here.",
        img: "https://cdn.pixabay.com/photo/2019/10/15/10/31/gin-4551299__340.jpg",
        rate: 4.8
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: CardboardAppStyle.mainColor,
        title: Text("Stats"),
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      children: [
                        Expanded(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Wins",
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              "154",
                              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                            ),
                            Container(
                              width: 48,
                              decoration: BoxDecoration(
                                color: Colors.green[50],
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.arrow_upward,
                                    size: 12,
                                    color: CardboardAppStyle.mainColor,
                                  ),
                                  Text(
                                    "4%",
                                    style: TextStyle(color: CardboardAppStyle.mainColor),
                                  ),
                                ],
                              ),
                            )
                          ],
                        )),
                        Expanded(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Win Rate",
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              "61.5%",
                              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                            ),
                            Container(
                              width: 48,
                              decoration: BoxDecoration(
                                color: Colors.green[50],
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.arrow_upward,
                                    size: 12,
                                    color: CardboardAppStyle.mainColor,
                                  ),
                                  Text(
                                    "4%",
                                    style: TextStyle(color: CardboardAppStyle.mainColor),
                                  ),
                                ],
                              ),
                            )
                          ],
                        )),
                        Expanded(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Unique Games",
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              "23",
                              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                            ),
                            Container(
                              width: 48,
                              decoration: BoxDecoration(
                                color: Colors.red[50],
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.arrow_downward, size: 12, color: Colors.red),
                                  Text(
                                    "-2%",
                                    style: TextStyle(color: Colors.red),
                                  ),
                                ],
                              ),
                            )
                          ],
                        )),
                      ],
                    ),
                  ),
                  flex: 3,
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 38,
                          width: 100,
                          decoration: BoxDecoration(color: Colors.grey[200], borderRadius: BorderRadius.circular(8)),
                          child: Stack(
                            children: [
                              Positioned(
                                  right: 0,
                                  top: 0,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.red,
                                    radius: 6,
                                  )),
                              Center(
                                child: Text("My Plays"),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            height: 38,
                            width: 100,
                          decoration: BoxDecoration(color: Colors.grey[200], borderRadius: BorderRadius.circular(8)),
                          child: Center(
                            child: Text("All Stats"),
                          )
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            height: 38,
                            width: 100,
                            decoration: BoxDecoration(color: Colors.grey[200], borderRadius: BorderRadius.circular(8)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Center(
                                  child: Text("Week"),
                                ),
                                Icon(Icons.arrow_drop_down)
                              ],
                            )
                        ),
                      ),
                    ],
                  ),
                  flex: 2,
                ),
              ],
            ),
            flex: 3,
          ),
          Divider(
            color: Colors.grey,
            thickness: 2,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Recent Plays", style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold

                  ),),
                  SizedBox(height: 16,),
                  Expanded(child: ListView.separated(itemBuilder: (_, index){
                        return Padding(
                          padding: const EdgeInsets.only(left: 0, right: 0, top: 8, bottom: 8),
                          child: Container(
                            child: Row(
                              children: [
                                Container(
                                  height: 84,
                                  width: 84,
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(8),
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        recentPlayItems[index].img!,
                                      ),
                                      fit: BoxFit.cover
                                    )
                                  ),

                                ),
                                SizedBox(width: 16,),
                                Flexible(
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 48),
                                    child: Column(

                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 48,
                                          padding: EdgeInsets.symmetric(vertical: 4, horizontal: 4),
                                          decoration: BoxDecoration(
                                            color: Colors.green[50],
                                            borderRadius: BorderRadius.circular(8),
                                          ),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.star,
                                                size: 12,
                                                color: CardboardAppStyle.mainColor,
                                              ),
                                              Text(
                                                "${recentPlayItems[index].rate}",
                                                style: TextStyle(color: CardboardAppStyle.mainColor),
                                              ),
                                            ],
                                          ),
                                        ),
                                          SizedBox(height: 8,),
                                          Text( recentPlayItems[index].title ?? "no title"),
                                        Text(recentPlayItems[index].subtitle ?? "no subtitle",
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey
                                        ),)

                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                  },
                  separatorBuilder: (_,index){
                    return Divider(color: Colors.grey,
                    );
                  }, itemCount: recentPlayItems.length,

                  ),

                  ),

                ],
              ),
            ),
            flex: 9,
          ),
        ],
      ),
      floatingActionButton: InkWell(
        onTap: () {
          // ScaffoldMessenger.of(context).showMaterialBanner(MaterialBanner(content: Text("asd"), actions: [
          //   TextButton(
          //     child: Text("Close"),
          //     onPressed: (){
          //       Navigator.of(context).pop();
          //     },
          //   )
          // ]));
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text('on'
                  'Button pressed record play')));
        },
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 32, vertical: 24),
          decoration: BoxDecoration(color: CardboardAppStyle.mainColor, borderRadius: BorderRadius.circular(8)),
          child: Text(
            "Record Play",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
