import 'package:flutter/material.dart';

import 'ui/fashion_main_page.dart';

class FashionStoreApp extends StatelessWidget {
  const FashionStoreApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Fashion Store App",
      initialRoute: "/",
      routes: {
        "/" : (context) => FashionMainPage(),
      },
    );
  }
}
