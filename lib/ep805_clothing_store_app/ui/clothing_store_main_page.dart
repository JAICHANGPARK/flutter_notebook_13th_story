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
      body: Column(
        children: [],
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
                onTap: (){
                  setState(() {
                    _index = 0;
                  });
                },
                child: Icon(
                  _index ==0 ? Icons.home : Icons.home_outlined,
                  color: _index == 0? Colors.indigo : Colors.grey,
                ),
              ),
              InkWell(
                onTap: (){
                  setState(() {
                    _index = 1;
                  });
                },
                child: Icon(
                  _index ==1 ? Icons.apps : Icons.apps_outlined,
                  color: _index == 1? Colors.indigo : Colors.grey,
                ),
              ),
              SizedBox(
                width: 16,
              ),
              Icon(
                Icons.wallet_giftcard,
                color: Colors.indigo,
              ),
              Icon(
                Icons.perm_identity,
                color: Colors.indigo,
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
