
import 'package:flutter/material.dart';
import 'package:flutter_notebook_13th_story/ep839_grocery_shop_app/grocery_home_page.dart';
import 'package:get/get.dart';

class GroceryShopApp extends StatelessWidget {
  const GroceryShopApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        routes: {
          "/": (context)=> GroceryHomePage(),
        },
    );
  }
}

