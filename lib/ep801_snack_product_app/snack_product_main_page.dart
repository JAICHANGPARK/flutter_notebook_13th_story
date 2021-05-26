import 'package:flutter/material.dart';



class SnackProductMainPage extends StatefulWidget {
  const SnackProductMainPage({Key? key}) : super(key: key);

  @override
  _SnackProductMainPageState createState() => _SnackProductMainPageState();
}

class _SnackProductMainPageState extends State<SnackProductMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Column(
          children: [
            Expanded(child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios), padding: EdgeInsets.zero, iconSize: 24,),
                  Text("BACK"),
                  Spacer(),
                  Text("SEARCH"),
                  Spacer(),
                  CircleAvatar(),


                ],
              ),
            ), flex: 2,),
            Expanded(child: Placeholder(), flex: 2,),
            Expanded(child: Placeholder(), flex: 15,),
          ],
        ),
      )
    );
  }
}
