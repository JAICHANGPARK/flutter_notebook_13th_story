import 'package:flutter/material.dart';

class NitoriMemberPage extends StatefulWidget {
  NitoriMemberPage({Key key}) : super(key: key);

  @override
  _NitoriMemberPageState createState() => _NitoriMemberPageState();
}

class _NitoriMemberPageState extends State<NitoriMemberPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(Icons.menu),
      ),
    );
  }
}