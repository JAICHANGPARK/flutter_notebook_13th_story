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
              children: [IconButton(onPressed: () => Navigator.of(context).pop(), icon: Icon(Icons.arrow_back)),
              Text("Shopping Bag", style: TextStyle(
                fontSize: 24
              ),),
              IconButton(onPressed: (){}, icon: Icon(Icons.mail_outline))],
              
            )
          ],
        ),
      ),
    );
  }
}
