import 'package:flutter/material.dart';

import 'ui/crypto_wallet_home_page.dart';

class CryptoWalletApp extends StatelessWidget {
  const CryptoWalletApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CryptoWalletHomePage(),
    );
  }
}
