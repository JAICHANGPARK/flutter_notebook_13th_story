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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            bottom: 200,
            left: 0,
            right: 0,
            top: 0,
            child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(widget.imgString),
                fit: BoxFit.cover
              )
            ),
          ),),
          Positioned(child: Row(children: [
              Icon(Icons.arrow_back),
              Icon(Icons.favorite, color: Colors.red,),

          ],)),
          Positioned(
            child: Container(
              height: 200,
              decoration: BoxDecoration(color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(16),
                topLeft:  Radius.circular(16),
              )),
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
