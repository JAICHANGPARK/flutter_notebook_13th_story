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
                child: Center(
                    child: Icon(
                  Icons.keyboard_arrow_left,
                  size: 28,
                )),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Column(
              children: [
                Text(
                  "Categories",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: _accentColor),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: _accentColor,
                      borderRadius: BorderRadius.circular(24)),
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.white,
                        child: Center(
                            child: Icon(
                          Icons.search,
                          size: 28,
                        )),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "Search yout product",
                              border: InputBorder.none,
                              hintStyle: TextStyle(color: Colors.white)),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Daily needs",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  Text(
                    "see all",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 160,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: Container(
                      width: 160,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(8)
                      ),
                      padding: EdgeInsets.all(16),
                      child: Column(
                        children: [
                          Image.network("https://www.seekpng.com/png/full/540-5406789_vegetable-png-image-fruits-and-vegetables-png.png",
                          height: 84,),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: Container(
                      width: 160,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(8)
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: Container(
                      width: 160,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(8)
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
