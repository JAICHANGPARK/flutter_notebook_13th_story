import 'package:flutter/material.dart';
import 'package:flutter_notebook_13th_story/ep829_fashion_store_app/ui/shopping_bag_page.dart';

import 'ui/fashion_main_page.dart';
import 'ui/fashion_store_home_page.dart';

class FashionStoreApp extends StatelessWidget {
  const FashionStoreApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Fashion Store App",
      initialRoute: "/",
      routes: {
        "/" : (context) => FashionStoreHomePage(),
        "/main" :(context) => FashionMainPage(),
        "/shopping_bag" :(context) => ShoppingBagPage(),
      },
    );
  }
}
