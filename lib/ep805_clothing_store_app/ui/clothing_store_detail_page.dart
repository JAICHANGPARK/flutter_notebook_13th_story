import 'package:flutter/material.dart';

class ClothingStoreDetailPage extends StatefulWidget {
  final String imgString;
  final String title;
  final double price;

  const ClothingStoreDetailPage({
    Key? key,
    required this.imgString,
    required this.price,
    required this.title,
  }) : super(key: key);

  @override
  _ClothingStoreDetailPageState createState() => _ClothingStoreDetailPageState();
}

class _ClothingStoreDetailPageState extends State<ClothingStoreDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              bottom: 200,
              left: 0,
              right: 0,
              top: 0,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.blue,
                    image: DecorationImage(image: NetworkImage(widget.imgString), fit: BoxFit.cover)),
              ),
            ),
            Positioned(
                top: 16,
                left: 16,
                right: 16,
                child: Row(
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.arrow_back)),
                    Spacer(),
                    Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ),
                    Container(
                      height: 38,
                      width: 38,
                      child: Stack(
                        children: [
                          Positioned(
                            child: Icon(Icons.shopping_bag_outlined),
                            left: 8,
                            top: 8,
                            right: 8,
                            bottom: 8,
                          ),
                          Positioned(
                            child: CircleAvatar(
                              radius: 8,
                              child: Text("3"),
                              backgroundColor: Colors.red,
                              foregroundColor: Colors.white,
                            ),
                            right: 0,
                            top: 0,
                          ),
                        ],
                      ),
                    )
                  ],
                )),
            Positioned(
                left: 8,
                right: 8,
                top: 24,
                bottom: 200,
                child: Container(
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(onPressed: () {}, icon: Icon(Icons.keyboard_arrow_left)),
                        IconButton(onPressed: () {}, icon: Icon(Icons.keyboard_arrow_right)),
                      ],
                    ),
                  ),
                )),
            Positioned(
              child: Container(
                height: 320,
                child: Column(
                  children: [
                    Expanded(child: Placeholder()),
                  ],
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(16),
                      topLeft: Radius.circular(16),
                    )),
              ),
              left: 0,
              right: 0,
              bottom: 0,
            ),
          ],
        ),
      ),
    );
  }
}
