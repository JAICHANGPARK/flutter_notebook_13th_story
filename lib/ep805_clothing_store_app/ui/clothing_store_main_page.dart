import 'package:flutter/material.dart';

class ClothingStoreMainPage extends StatefulWidget {
  const ClothingStoreMainPage({Key? key}) : super(key: key);

  @override
  _ClothingStoreMainPageState createState() => _ClothingStoreMainPageState();
}

class _ClothingStoreMainPageState extends State<ClothingStoreMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [],
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 16,
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 72,
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.home,
                color: Colors.indigo,
              ),
              Icon(
                Icons.apps,
                color: Colors.indigo,
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
