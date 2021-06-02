import 'package:flutter/material.dart';

class ClothingStoreDetailPage extends StatefulWidget {
  final String imgString;
  final String title;
  final double price;

  const ClothingStoreDetailPage({
    Key? key,
    required this.imgString,
    required this.price,
    
  }) : super(key: key);

  @override
  _ClothingStoreDetailPageState createState() => _ClothingStoreDetailPageState();
}

class _ClothingStoreDetailPageState extends State<ClothingStoreDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            child: Container(
              height: 160,
              decoration: BoxDecoration(color: Colors.white),
            ),
            left: 0,
            right: 0,
            bottom: 0,
          ),
        ],
      ),
    );
  }
}
