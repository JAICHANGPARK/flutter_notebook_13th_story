import 'package:flutter/material.dart';

class NitoriFavoritePage extends StatefulWidget {
  const NitoriFavoritePage({Key? key}) : super(key: key);

  @override
  _NitoriFavoritePageState createState() => _NitoriFavoritePageState();
}

class _NitoriFavoritePageState extends State<NitoriFavoritePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(child: Placeholder(), flex: 3,),
          Expanded(child: Placeholder(),flex: 12,),
          Expanded(child: Placeholder(), flex: 4,),
        ],
      ),
    );
  }
}
