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
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Icon(Icons.arrow_back_ios)),
                    Text(
                      "BACK",
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Container(
                      height: 48,
                      width: 48,
                      child: Stack(
                        children: [
                          Positioned(
                            child: Container(
                              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(8),
                              boxShadow: 
                              [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 2,
                                  spreadRadius: 4
                                )
                                
                              ]
                                  
                              
                              ),
                              child: Center(
                                  child: Icon(
                                Icons.shopping_bag,
                                color: Colors.red,
                                size: 18,
                              )),
                            ),
                            left: 6,
                            right: 6,
                            top: 6,
                            bottom: 6,
                          ),
                          Positioned(
                            child: CircleAvatar(
                              radius: 8,
                              child: Text("4", style: TextStyle(
                                fontSize: 12
                              ),),
                              backgroundColor: Colors.black,
                              foregroundColor: Colors.white,
                            ),
                            right: 0,
                            top: 0,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              flex: 2,
            ),
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                      top: 64,
                      left: 0,
                      bottom: 0,
                      right: 0,
                      child: Container(
                    decoration: BoxDecoration(
                      color: Colors.red
                    ),
                  ))
                ],
              ),
              flex: 20,
            )
          ],
        ),
      ),
    );
  }
}
