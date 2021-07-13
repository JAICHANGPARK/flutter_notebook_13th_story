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
          padding: EdgeInsets.symmetric(vertical: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(onPressed: (){}, icon: Icon(Ionicons.wallet_outline)),
              IconButton(onPressed: (){}, icon: Icon(Ionicons.pie_chart)),
              FloatingActionButton(onPressed: (){}, child: Icon(Icons.my_location_outlined),),
              IconButton(onPressed: (){}, icon: Icon(Ionicons.stats_chart_outline)),
              IconButton(onPressed: (){}, icon: Icon(Ionicons.settings_outline)),
            ],
          ),
        ),
      ),
    );
  }
}