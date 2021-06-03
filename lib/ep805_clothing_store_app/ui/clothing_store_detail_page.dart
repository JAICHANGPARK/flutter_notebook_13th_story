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
  late PageController _pageController;
  int _pageIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(initialPage: 0)
  }

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
              child: PageView(
                controller: _pageController,
                onPageChanged: (pIdx) {
                  setState(() {
                    _pageIndex = pIdx;
                  });
                },
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        image: DecorationImage(image: NetworkImage(widget.imgString),
                            fit: BoxFit.cover)),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        image: DecorationImage(image: NetworkImage(widget.imgString),
                            fit: BoxFit.cover)),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        image: DecorationImage(image: NetworkImage(widget.imgString),
                            fit: BoxFit.cover)),
                  ),
                ],
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
                height: 300,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24),
                      child: Container(
                          width: 172,
                          height: 64,
                          decoration: BoxDecoration(color: Colors.grey[300], borderRadius: BorderRadius.circular(8)),
                          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                          child: Row(
                            children: [
                              Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(8),
                                      image: DecorationImage(
                                          image: NetworkImage(
                                            "https://cdn.pixabay.com/photo/2017/10/29/13/17/jacket-2899729_960_720.png",
                                          ),
                                          fit: BoxFit.cover),
                                    ),
                                  )),
                              SizedBox(
                                width: 4,
                              ),
                              Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: NetworkImage(widget.imgString), fit: BoxFit.cover),
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all()),
                                  )),
                              SizedBox(
                                width: 4,
                              ),
                              Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(8),
                                        image: DecorationImage(
                                            image: NetworkImage(
                                              "https://cdn.pixabay.com/photo/2018/10/03/17/42/leather-3721996_960_720.jpg",
                                            ),
                                            fit: BoxFit.cover)),
                                  )),
                            ],
                          )),
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: 4,
                          width: 48,
                          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(8)),
                        ),
                      ),
                      flex: 1,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(16),
                              topLeft: Radius.circular(16),
                            )),
                        child: Column(
                          children: [],
                        ),
                      ),
                      flex: 10,
                    ),
                  ],
                ),
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
