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
              height: 54,
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
                        CircleAvatar(),
                        Text(
                          "Search",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  )),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                      child: Placeholder(
                    color: _accentColor,
                  ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
