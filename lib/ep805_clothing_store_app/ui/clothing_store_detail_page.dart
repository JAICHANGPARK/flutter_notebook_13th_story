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
  int _pageIndex = 1;
  int _count = 1;
  final String _img0 = "https://cdn.pixabay.com/photo/2017/10/29/13/17/jacket-2899729_960_720.png";
  final String _img1 = "https://cdn.pixabay.com/photo/2018/10/03/17/42/leather-3721996_960_720.jpg";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(initialPage: 1);
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
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                        color: Colors.grey[100], image: DecorationImage(image: NetworkImage(_img0), fit: BoxFit.cover)),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[100],
                        image: DecorationImage(image: NetworkImage(widget.imgString), fit: BoxFit.cover)),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[100], image: DecorationImage(image: NetworkImage(_img1), fit: BoxFit.cover)),
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
                        IconButton(
                            onPressed: () {
                              _pageController.jumpToPage(_pageIndex - 1);
                            },
                            icon: Icon(Icons.keyboard_arrow_left)),
                        IconButton(
                            onPressed: () {
                              _pageController.jumpToPage(_pageIndex + 1);
                            },
                            icon: Icon(Icons.keyboard_arrow_right)),
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
                                  border: _pageIndex == 0 ? Border.all() : null,
                                  image: DecorationImage(
                                      image: NetworkImage(
                                        _img0,
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
                                    image: DecorationImage(image: NetworkImage(widget.imgString), fit: BoxFit.cover),
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8),
                                    border: _pageIndex == 1 ? Border.all() : null),
                              )),
                              SizedBox(
                                width: 4,
                              ),
                              Expanded(
                                  child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: _pageIndex == 2 ? Border.all() : null,
                                    borderRadius: BorderRadius.circular(8),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                          _img1,
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
                        padding: EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  widget.title,
                                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "\$${widget.price}",
                                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Expanded(
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      children: [
                                        Expanded(
                                            child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: Colors.grey[300]!,
                                                ),
                                                borderRadius: BorderRadius.circular(8)),
                                            height: double.infinity,
                                            width: double.infinity,
                                            padding: EdgeInsets.only(left: 8),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                                              children: [
                                                Text(
                                                  "Size",
                                                  style: TextStyle(color: Colors.grey),
                                                ),
                                                Text(
                                                  "Large",
                                                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                                ),
                                              ],
                                            ),
                                          ),
                                        )),
                                        Expanded(
                                            child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            height: double.infinity,
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: Colors.grey[300]!,
                                                ),
                                                borderRadius: BorderRadius.circular(8)),
                                            padding: EdgeInsets.only(left: 8),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                                              children: [
                                                Text(
                                                  "Color",
                                                  style: TextStyle(color: Colors.grey),
                                                ),
                                                Container(
                                                  height: 8,
                                                  width: 42,
                                                  decoration: BoxDecoration(
                                                      color: Colors.black, borderRadius: BorderRadius.circular(4)),
                                                )
                                              ],
                                            ),
                                          ),
                                        )),
                                      ],
                                    ),
                                    flex: 2,
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Expanded(
                                    child: Column(
                                      children: [
                                        Expanded(
                                            child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                              height: double.infinity,
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(8),
                                                  border: Border.all(color: Colors.grey)),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                children: [IconButton(onPressed: () {
                                                  if(_count < 2){
                                                    _count = 2;
                                                  }
                                                  _count -= 1;
                                                  setState(() {

                                                  });

                                                }, icon: Icon(Icons.remove)),
                                                  Text(_count < 10 ? "0${_count}" : "${_count}"),
                                                  IconButton(onPressed: () {
                                                    setState(() {
                                                      _count += 1;
                                                    });

                                                  }, icon: Icon(Icons.add)),
                                                ],
                                              )),
                                        )),
                                        Expanded(
                                            child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            height: double.infinity,
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(8),
                                                border: Border.all(color: Colors.grey)),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                                              children: [
                                                Text(
                                                  "Composition",
                                                  style: TextStyle(color: Colors.grey),
                                                ),
                                                Text(
                                                  "Silk Bamboo",
                                                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                                ),
                                              ],
                                            ),
                                          ),
                                        )),
                                      ],
                                    ),
                                    flex: 3,
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Expanded(
                                    child: Column(
                                      children: [
                                        Expanded(child: Placeholder()),
                                      ],
                                    ),
                                    flex: 2,
                                  ),
                                ],
                              ),
                            )
                          ],
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
