import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class CryptoWalletHomePage extends StatefulWidget {
  CryptoWalletHomePage({Key? key}) : super(key: key);

  @override
  _CryptoWalletHomePageState createState() => _CryptoWalletHomePageState();
}

class _CryptoWalletHomePageState extends State<CryptoWalletHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          child: Row(
            children: [
              IconButton(onPressed: (){}, icon: Icon(Ionicons.wallet_outline)),
              IconButton(onPressed: (){}, icon: Icon(Ionicons.wallet_outline)),

            ],
          ),
        ),
      ),
    );
  }
}