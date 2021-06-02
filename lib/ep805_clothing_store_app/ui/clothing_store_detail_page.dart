import 'package:flutter/material.dart';

class ClothingStoreDetailPage extends StatefulWidget {
  final String imgString;
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
          
        ],
      ),
    );
  }
}
