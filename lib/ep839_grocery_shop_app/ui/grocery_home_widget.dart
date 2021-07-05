import 'package:flutter/material.dart';

class GroceryHomeWidget extends StatefulWidget {
  const GroceryHomeWidget({Key? key}) : super(key: key);

  @override
  _GroceryHomeWidgetState createState() => _GroceryHomeWidgetState();
}

class _GroceryHomeWidgetState extends State<GroceryHomeWidget> {
  Color _accentColor = Color(0xff52C66C);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundColor: _accentColor,
                  child: Icon(Icons.menu),
                  foregroundColor: Colors.white,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: _accentColor,
                    borderRadius: BorderRadius.circular(24),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  child: Center(
                    child: Text(
                      "Dream Shop",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                CircleAvatar(
                  backgroundColor: _accentColor,
                  child: Icon(Icons.notifications_none_outlined),
                  foregroundColor: Colors.white,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Find everything\nright to your door",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: _accentColor,
                    fontSize: 32,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 48,
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                    decoration: BoxDecoration(
                        color: _accentColor,
                        borderRadius: BorderRadius.circular(32)),
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                    child: Row(
                      children: [
                        CircleAvatar(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.black,
                          child: Icon(Icons.search),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "Search",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                              fontSize: 16),
                        )
                      ],
                    ),
                  )),
                  SizedBox(width: 16),
                  Expanded(
                      child: Container(
                    decoration: BoxDecoration(
                        color: _accentColor,
                        borderRadius: BorderRadius.circular(32)),
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.black,
                          child: Icon(Icons.location_on_outlined),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "Seoul",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                              fontSize: 16),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.keyboard_arrow_down),
                          color: Colors.white,
                        )
                      ],
                    ),
                  )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Container(
                height: 160,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.black),
                padding: EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Buy \$100 and get \$10 off",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                    CircleAvatar(
                      backgroundColor: Color(0xff08150D),
                      child: Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 18,
                      ),
                      foregroundColor: Colors.white,
                    )
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Popular product",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                Text("See all")
              ],
            )
          ],
        ),
      ),
    );
  }
}
