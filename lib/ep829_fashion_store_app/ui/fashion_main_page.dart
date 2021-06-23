import 'package:flutter/material.dart';

class FashionMainPage extends StatefulWidget {
  FashionMainPage({Key? key}) : super(key: key);

  @override
  _FashionMainPageState createState() => _FashionMainPageState();
}

class _FashionMainPageState extends State<FashionMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(24),
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://cdn.pixabay.com/photo/2016/11/29/06/46/adult-1867889_960_720.jpg",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 8,
                          top: 16,
                          right: 8,
                          child: Row(
                        children: [
                          IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back)),
                          Spacer(),
                          IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border)),
                        ],
                      )),
                      Positioned(child: Center(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white
                          ),
                          height: MediaQuery.of(context).size.height / 4,
                          width: 84,
                        ),
                      ),
                      right: 12,
                      top: 0,

                      bottom: 0,),
                    ],
                  ),
                ),
              ),
              flex: 8,
            ),
            Expanded(
              child: Placeholder(),
              flex: 3,
            ),
            Expanded(
              child: Placeholder(),
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
