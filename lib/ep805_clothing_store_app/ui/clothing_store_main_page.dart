import 'package:flutter/material.dart';

class ClothingStoreMainPage extends StatefulWidget {
  const ClothingStoreMainPage({Key? key}) : super(key: key);

  @override
  _ClothingStoreMainPageState createState() => _ClothingStoreMainPageState();
}

class _ClothingStoreMainPageState extends State<ClothingStoreMainPage> {
  int _index = 0;

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
            Expanded(
              child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: Column(
                        children: [
                          Container(
                            height: 42,
                            width: 42,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              shape: BoxShape.circle,
                            ),
                          ),
                          Text(
                            "Clothes",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    );
                  }),
              flex: 2,
            ),
            Expanded(
              child: Placeholder(),
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
