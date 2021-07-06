import 'package:flutter/material.dart';

class GroceryCategoryWidget extends StatefulWidget {
  GroceryCategoryWidget({Key? key}) : super(key: key);

  @override
  _GroceryCategoryWidgetState createState() => _GroceryCategoryWidgetState();
}

class _GroceryCategoryWidgetState extends State<GroceryCategoryWidget> {
  Color _accentColor = Color(0xff52C66C);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: CircleAvatar(
                backgroundColor: _accentColor,
                foregroundColor: Colors.white,
                child: Center(child: Icon(Icons.keyboard_arrow_left, size: 28,)),
              ),
            ),
            Column(
              children: [
                Text("Categories", style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: _accentColor
                ),),
                SizedBox(height: 16,),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: _accentColor,
                    borderRadius: BorderRadius.circular(24)
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.white,
                        child: Center(child: Icon(Icons.search, size: 28,)),
                      ),
                      SizedBox(width: 8,),
                      Expanded(
                        child: TextField(
                          
                          decoration: InputDecoration(
                            hintText: "Search yout product",
                            border: InputBorder.none,
                            hintStyle: TextStyle(
                              color: Colors.white
                            )
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )

          ],
        ),
      ),
    );
  }
}