import 'package:flutter/material.dart';

class FashionMainPage extends StatefulWidget {
  FashionMainPage({Key? key}) : super(key: key);

  @override
  _FashionMainPageState createState() => _FashionMainPageState();
}

class _FashionMainPageState extends State<FashionMainPage> {
  final ValueNotifier<int> _count = ValueNotifier<int>(1);

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
                              IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
                              Spacer(),
                              IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border)),
                            ],
                          )),
                      Positioned(
                        child: Center(
                          child: Container(
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12)),
                            height: MediaQuery.of(context).size.height / 3.2,
                            width: 72,
                          ),
                        ),
                        right: 12,
                        top: 64,
                        bottom: 0,
                      ),
                    ],
                  ),
                ),
              ),
              flex: 10,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Jean jacket",
                          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "\$109.00",
                          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Expanded(
                        child: Row(
                      children: [
                        Expanded(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Color"),
                            Row(
                              children: [
                                Container(
                                  height: 48,
                                  width: 48,
                                  color: Colors.grey,
                                  child: Stack(
                                    children: [Positioned(left: 0, top: 0, bottom: 0, right: 0,
                                        child: CircleAvatar()),
                                      Positioned( top: 0, right: 0,
                                          child: CircleAvatar(
                                            backgroundColor: Colors.black,
                                            child: Icon(Icons.check, color: Colors.white,),
                                          ))

                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        )),
                        Expanded(child: Placeholder()),
                      ],
                    ))
                  ],
                ),
              ),
              flex: 4,
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          _count.value -= 1;
                          if (_count.value <= 1) {
                            _count.value = 1;
                          }
                        },
                        child: CircleAvatar(
                          radius: 16,
                          backgroundColor: Colors.grey[300],
                          child: Icon(
                            Icons.remove,
                            size: 18,
                          ),
                          foregroundColor: Colors.black,
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: ValueListenableBuilder<int>(
                            valueListenable: _count,
                            builder: (BuildContext context, value, Widget? child) {
                              return Text(value.toString());
                            },
                          )),
                      GestureDetector(
                        onTap: () {
                          _count.value += 1;
                        },
                        child: CircleAvatar(
                          radius: 16,
                          backgroundColor: Colors.grey[300],
                          child: Icon(Icons.add, size: 18),
                          foregroundColor: Colors.black,
                        ),
                      )
                    ],
                  )),
                  Expanded(
                      child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                    decoration: BoxDecoration(color: Colors.black87, borderRadius: BorderRadius.circular(16)),
                    child: Center(
                      child: Text(
                        "Add to cart",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )),
                ],
              ),
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
