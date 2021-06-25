import 'package:flutter/material.dart';

class ShoppingBagPage extends StatefulWidget {
  const ShoppingBagPage({Key? key}) : super(key: key);

  @override
  _ShoppingBagPageState createState() => _ShoppingBagPageState();
}

class _ShoppingBagPageState extends State<ShoppingBagPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: () => Navigator.of(context).pop(), icon: Icon(Icons.arrow_back)),
                Text(
                  "Shopping Bag",
                  style: TextStyle(fontSize: 24),
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.mail_outline))
              ],
            ),
            Expanded(
              child: Placeholder(),
              flex: 8,
            ),
            Expanded(
              child: Placeholder(),
              flex: 2,
            ),
            Expanded(
              child: Placeholder(),
              flex: 4,
            ),
            Expanded(
              child: Container(
                child: Center(
                  child: Text(
                    "Proceed to Checkout",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
