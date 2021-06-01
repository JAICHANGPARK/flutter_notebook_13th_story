import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ClothingStoreMainPage extends StatefulWidget {
  const ClothingStoreMainPage({Key? key}) : super(key: key);

  @override
  _ClothingStoreMainPageState createState() => _ClothingStoreMainPageState();
}

class _ClothingStoreMainPageState extends State<ClothingStoreMainPage> {
  int _index = 0;
  int _selectTabItem = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.menu),
                    Text(
                      "ISSACS",
                      style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
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
                ),
              ),
              flex: 2,
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                padding: EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(16)),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Search Products",
                    icon: Icon(Icons.search),
                  ),
                ),
              ),
              flex: 2,
            ),
            SizedBox(
              height: 16,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 16),
                child: ListView.builder(
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          setState(() {
                            _selectTabItem = index;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(right: 16),
                          child: Column(
                            children: [
                              Container(
                                height: 42,
                                width: 42,
                                decoration: BoxDecoration(
                                  color: _selectTabItem == index ? Colors.white : Colors.transparent,
                                  border: _selectTabItem == index ? null : Border.all(color: Colors.grey),
                                  shape: BoxShape.circle,
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "Clothes",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
              flex: 3,
            ),
            Expanded(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      children: [
                        Text(
                          "New Arrivals",
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Icon(Icons.arrow_right_alt),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: StaggeredGridView.countBuilder(
                          crossAxisCount: 2,
                          crossAxisSpacing: 8,
                          mainAxisSpacing: 8,
                          itemCount: 8,
                          itemBuilder: (context, index) {
                            return Container(
                                child: Column(
                              children: [
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: NetworkImage(""
                                                "https://cdn.pixabay.com/photo/2017/08/01/11/48/woman-2564660_960_720.jpg"),
                                            fit: BoxFit.cover),
                                        color: Colors.grey,
                                        borderRadius: BorderRadius.circular(8)),
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          right: 8,
                                          top: 8,
                                          child: CircleAvatar(
                                            radius: 12,
                                            backgroundColor: Colors.white,
                                            foregroundColor: Colors.red,
                                            child: Icon(
                                              Icons.favorite,
                                              size: 16,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  flex: 8,
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Dream Walker - Jacket",
                                        style: TextStyle(fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            '\$199.99',
                                            style: TextStyle(fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            width: 8,
                                          ),
                                          Text(
                                            "\$299.99",
                                            style:
                                                TextStyle(color: Colors.grey, decoration: TextDecoration.lineThrough),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  flex: 4,
                                ),
                              ],
                            ));
                          },
                          staggeredTileBuilder: (index) {
                            return StaggeredTile.count(1, index.isEven ? 2 : 1);
                          }),
                    ),
                  )
                ],
              ),
              flex: 15,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 12,
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 64,
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    _index = 0;
                  });
                },
                child: Icon(
                  _index == 0 ? Icons.home : Icons.home_outlined,
                  color: _index == 0 ? Colors.indigo : Colors.grey,
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    _index = 1;
                  });
                },
                child: Icon(
                  _index == 1 ? Icons.apps : Icons.apps_outlined,
                  color: _index == 1 ? Colors.indigo : Colors.grey,
                ),
              ),
              SizedBox(
                width: 16,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    _index = 2;
                  });
                },
                child: Icon(
                  _index == 2 ? Icons.wallet_giftcard : Icons.wallet_giftcard_outlined,
                  color: _index == 2 ? Colors.indigo : Colors.grey,
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    _index = 3;
                  });
                },
                child: Icon(
                  _index == 3 ? Icons.person : Icons.perm_identity,
                  color: _index == 3 ? Colors.indigo : Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.indigo,
        onPressed: () {},
        child: Icon(Icons.qr_code),
      ),
    );
  }
}
