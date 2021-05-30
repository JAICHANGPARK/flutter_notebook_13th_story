import 'package:flutter/material.dart';

import 'ui/clothing_store_main_page.dart';

class ClothingStoreApp extends StatelessWidget {
  const ClothingStoreApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ClothingStoreMainPage(),
    );
  }
}
