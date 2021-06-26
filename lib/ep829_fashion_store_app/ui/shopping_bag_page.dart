import 'package:flutter/material.dart';
import 'package:flutter_notebook_13th_story/ep829_fashion_store_app/mocks/shopping_bag_items.dart';

class ShoppingBagPage extends StatefulWidget {
  const ShoppingBagPage({Key? key}) : super(key: key);

  @override
  _ShoppingBagPageState createState() => _ShoppingBagPageState();
}

class _ShoppingBagPageState extends State<ShoppingBagPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () => Navigator.of(context).pop(),
                    icon: Icon(Icons.arrow_back)),
                Text(
                  "Shopping Bag",
                  style: TextStyle(fontSize: 24),
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.mail_outline))
              ],
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: shoppingBagItems.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          Container(
                            height: 84,
                            width: 84,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                    image: NetworkImage(
                                      "${shoppingBagItems[index].img}",
                                    ),
                                    fit: BoxFit.cover)),
                          ),
                          SizedBox(width: 16,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "${shoppingBagItems[index].title}",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "\$${shoppingBagItems[index].price}",
                                ),
                                SizedBox(height: 16,),
                                Row(
                                  children: [
                                    Container(
                                      height: 32,
                                      width: 32,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.grey[200]!),
                                        shape: BoxShape.circle,
                                      ),
                                      child: Center(
                                        child: Icon(Icons.remove),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("${shoppingBagItems[index].size}"),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.delete_outline,
                                    color: Colors.red,
                                  ))
                            ],
                          )
                        ],
                      ),
                    );
                  }),
              flex: 8,
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.fromLTRB(8, 8, 8, 8),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none, hintText: "Promo Code"),
                        ),
                      ),
                      flex: 6,
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(8, 8, 8, 8),
                        decoration: BoxDecoration(
                            color: Colors.black87,
                            borderRadius: BorderRadius.circular(16)),
                        child: Center(
                          child: Text(
                            "Apply",
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ),
                      ),
                      flex: 2,
                    ),
                  ],
                ),
              ),
              flex: 2,
            ),
            Expanded(
              child: Placeholder(),
              flex: 4,
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.fromLTRB(8, 4, 8, 4),
                decoration: BoxDecoration(
                    color: Colors.black87,
                    borderRadius: BorderRadius.circular(24)),
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
