import 'package:flutter/material.dart';

class SnackProductDetailPage extends StatefulWidget {
  final String mainImg;

  SnackProductDetailPage({Key? key, required this.mainImg}) : super(key: key);

  @override
  _SnackProductDetailPageState createState() => _SnackProductDetailPageState();
}

class _SnackProductDetailPageState extends State<SnackProductDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Icon(Icons.arrow_back_ios),
                  Text("BACK", style: const TextStyle(

                    fontWeight: FontWeight.bold
                  ),)
                ],
              ),
              flex: 2,
            ),
            Expanded(
              child: Placeholder(),
              flex: 20,
            )
          ],
        ),
      ),
    );
  }
}
