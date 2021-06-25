import 'package:flutter/material.dart';

class FashionMainPage extends StatefulWidget {
  FashionMainPage({Key? key}) : super(key: key);

  @override
  _FashionMainPageState createState() => _FashionMainPageState();
}

class _FashionMainPageState extends State<FashionMainPage> {
  final ValueNotifier<int> _count = ValueNotifier<int>(1);

  int _colorIndex = 0;
  int _sizeIndex = 0;

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
                              IconButton(onPressed: () => Navigator.of(context).pop(),
                                  icon: Icon(Icons.arrow_back)),
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
                            child: Column(
                              children: [
                                Expanded(
                                    child: Container(
                                  margin: EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                    color: Colors.blue[300],
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                )),
                                Expanded(
                                    child: Container(
                                  margin: EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                    color: Colors.blue[300],
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                )),
                                Expanded(
                                    child: Container(
                                  margin: EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                    color: Colors.blue[300],
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                )),
                                Expanded(
                                    child: Container(
                                  margin: EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                    color: Colors.blue[300],
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                )),
                              ],
                            ),
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
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Color",
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _colorIndex = 0;
                                    });
                                  },
                                  child: Container(
                                    height: 48,
                                    width: 48,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                            left: 0,
                                            top: 0,
                                            bottom: 0,
                                            right: 0,
                                            child: CircleAvatar(
                                              backgroundColor: Colors.greenAccent,
                                            )),
                                        _colorIndex == 0
                                            ? Positioned(
                                                top: 0,
                                                right: 0,
                                                child: CircleAvatar(
                                                  radius: 8,
                                                  backgroundColor: Colors.black,
                                                  child: Icon(
                                                    Icons.check,
                                                    color: Colors.white,
                                                    size: 12,
                                                  ),
                                                ))
                                            : Container()
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _colorIndex = 1;
                                    });
                                  },
                                  child: Container(
                                    height: 48,
                                    width: 48,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                            left: 0,
                                            top: 0,
                                            bottom: 0,
                                            right: 0,
                                            child: CircleAvatar(
                                              backgroundColor: Colors.lightGreen,
                                            )),
                                        _colorIndex == 1
                                            ? Positioned(
                                                top: 0,
                                                right: 0,
                                                child: CircleAvatar(
                                                  radius: 8,
                                                  backgroundColor: Colors.black,
                                                  child: Icon(
                                                    Icons.check,
                                                    color: Colors.white,
                                                    size: 12,
                                                  ),
                                                ))
                                            : Container()
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _colorIndex = 2;
                                    });
                                  },
                                  child: Container(
                                    height: 48,
                                    width: 48,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                            left: 0,
                                            top: 0,
                                            bottom: 0,
                                            right: 0,
                                            child: CircleAvatar(
                                              backgroundColor: Colors.brown,
                                            )),
                                        _colorIndex == 2
                                            ? Positioned(
                                                top: 0,
                                                right: 0,
                                                child: CircleAvatar(
                                                  radius: 8,
                                                  backgroundColor: Colors.black,
                                                  child: Icon(
                                                    Icons.check,
                                                    color: Colors.white,
                                                    size: 12,
                                                  ),
                                                ))
                                            : Container()
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        )),
                        Expanded(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Size",
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _sizeIndex = 0;
                                    });
                                  },
                                  child: Container(
                                    height: 48,
                                    width: 48,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                            left: 0,
                                            top: 0,
                                            bottom: 0,
                                            right: 0,
                                            child: CircleAvatar(
                                              backgroundColor: _sizeIndex == 0 ? Colors.black : Colors.grey[200],
                                              child: Text(
                                                "S",
                                                style: TextStyle(
                                                  color: _sizeIndex == 0 ? Colors.white : Colors.black,
                                                ),
                                              ),
                                            )),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _sizeIndex = 1;
                                    });
                                  },
                                  child: Container(
                                    height: 48,
                                    width: 48,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                            left: 0,
                                            top: 0,
                                            bottom: 0,
                                            right: 0,
                                            child: CircleAvatar(
                                              backgroundColor: _sizeIndex == 1 ? Colors.black : Colors.grey[200],
                                              child: Text(
                                                "M",
                                                style: TextStyle(
                                                  color: _sizeIndex == 1 ? Colors.white : Colors.black,
                                                ),
                                              ),
                                            )),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _sizeIndex = 2;
                                    });
                                  },
                                  child: Container(
                                    height: 48,
                                    width: 48,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                            left: 0,
                                            top: 0,
                                            bottom: 0,
                                            right: 0,
                                            child: CircleAvatar(
                                              backgroundColor: _sizeIndex == 2 ? Colors.black : Colors.grey[200],
                                              child: Text(
                                                "L",
                                                style: TextStyle(
                                                  color: _sizeIndex == 2 ? Colors.white : Colors.black,
                                                ),
                                              ),
                                            )),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        )),
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
                      child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
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
                                return Text(
                                  value.toString(),
                                  style: TextStyle(fontSize: 16),
                                );
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
                    ),
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
