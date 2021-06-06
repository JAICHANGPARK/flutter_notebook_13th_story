import 'package:flutter/material.dart';
import 'package:flutter_notebook_13th_story/ep805_clothing_store_app/model/cloth.dart';

class ShoppingChartPage extends StatefulWidget {
  const ShoppingChartPage({Key? key}) : super(key: key);

  @override
  _ShoppingChartPageState createState() => _ShoppingChartPageState();
}

class _ShoppingChartPageState extends State<ShoppingChartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.grey[100]!,
        elevation: 0,
        iconTheme: IconTheme.of(context).copyWith(color: Colors.black),
        title: Text(
          "My Cart (3)",
          style: TextStyle(color: Colors.black),
        ),
        foregroundColor: Colors.black,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: ListView.builder(
                    itemCount: clothItems.length,

                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: Container(
                          height: 100,
                          decoration: BoxDecoration(),
                          child: Row(
                            children: [
                              Container(
                                height: 84,
                                width: 84,
                                decoration: BoxDecoration(color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                  image: NetworkImage(
                                    clothItems[index].img!,
                                  ),
                                  fit: BoxFit.cover
                                )),
                              ),
                              
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text('${clothItems[index].name}'),
                                          Spacer(),
                                          IconButton(onPressed: () {}, icon: Icon(Icons.clear))
                                        ],
                                      ),
                                      Text(
                                        "Size: Extra Large(XL)",
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                      Row(
                                        children: [
                                          Text('\$0.99'),
                                          Text(
                                            "\$59.99",
                                            style: TextStyle(decoration: TextDecoration.lineThrough, color: Colors.grey),
                                          ),
                                          Spacer(),
                                          Container(
                                            height: 24,
                                            width: 24,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(
                                                color: Colors.grey
                                              ),
                                              shape: BoxShape.circle
                                            ),
                                            child: Icon(Icons.remove, size: 16,),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(horizontal: 12),
                                            child: Text("01"),
                                          ),
                                          Container(
                                            height: 24,
                                            width: 24,
                                            decoration: BoxDecoration(
                                                color: Colors.indigo,
                                                shape: BoxShape.circle
                                            ),
                                            child: Icon(Icons.add, size: 16,
                                            color: Colors.white,),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                flex: 5,
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Promo Code",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 12),
                        decoration: BoxDecoration(color: Colors.indigo, borderRadius: BorderRadius.circular(8)),
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Center(
                          child: Text(
                            'Apply',
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                flex: 1,
              ),
              Expanded(
                child: Placeholder(),
                flex: 3,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(color: Colors.indigo, borderRadius: BorderRadius.circular(12)),
                  child: Center(
                    child: Text(
                      "Proceed To Checkout",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
                flex: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
