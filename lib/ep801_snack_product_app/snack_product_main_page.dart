import 'package:flutter/material.dart';
import 'package:flutter_notebook_13th_story/ep801_snack_product_app/snack_product_detail_page.dart';

class SnackProductMainPage extends StatefulWidget {
  const SnackProductMainPage({Key? key}) : super(key: key);

  @override
  _SnackProductMainPageState createState() => _SnackProductMainPageState();
}

class _SnackProductMainPageState extends State<SnackProductMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.grey[100],
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      Expanded(
                          child: Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.arrow_back_ios),
                            padding: EdgeInsets.zero,
                            iconSize: 16,
                          ),
                          Text(
                            "BACK",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      )),

                      Expanded(
                          child: Center(
                              child: Text(
                        "SEARCH",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ))),
                      Expanded(
                          child: Align(
                              alignment: Alignment.centerRight,
                              child: CircleAvatar(
                                backgroundColor: Colors.orange,
                              ))),
                      // CircleAvatar(),
                    ],
                  ),
                ),
                flex: 2,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(border: Border.all(color: Colors.white)),
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "CHEETOS SIMPLY",
                                icon: Icon(Icons.search),
                                hintStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.orange)),
                          ),
                        ),
                        flex: 10,
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 2),
                          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(8)),
                          child: Center(
                            child: Icon(
                              Icons.tune,
                              color: Colors.orange,
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
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Found 06 Result".toUpperCase(),
                                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                              )),
                        ),
                        flex: 2,
                      ),
                      Expanded(
                        child: GridView.count(
                          crossAxisCount: 2,
                          mainAxisSpacing: 16,
                          crossAxisSpacing: 16,
                          childAspectRatio: 4 / 5,
                          children: [
                            Hero(
                              tag: "item_0",
                              child: Material(
                                child: InkWell(
                                  onTap: (){
                                    Navigator.of(context).push(MaterialPageRoute(builder: (context)
                                    => SnackProductDetailPage(mainImg: "assets/img/cheetos.png",

                                    title: "Simply crunchy".toUpperCase(),
                                    subtitle: "Crunchy WHITE".toUpperCase(),
                                    singlePrice: 5.99,)));
                                  },
                                  child: Container(

                                    child: Stack(
                                      children: [
                                        Positioned(
                                          child: Card(
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Spacer(),
                                                  Text(
                                                    "Simply crunchy".toUpperCase(),
                                                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                                                  ),
                                                  Text(
                                                    "Crunchy WHITE".toUpperCase(),
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.bold, color: Colors.red, fontSize: 10),
                                                  ),
                                                  Text(
                                                    "\$5.99".toUpperCase(),
                                                    style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          top: 48,
                                          left: 8,
                                          right: 8,
                                          bottom: 0,
                                        ),
                                        Positioned(
                                          child: Image.asset("assets/img/cheetos.png"),
                                          top: 0,
                                          left: 24,
                                          right: 24,
                                          bottom: 54,
                                        ),
                                        Positioned(
                                          child: PhysicalModel(
                                            color: Colors.grey,
                                            shape: BoxShape.circle,
                                            elevation: 2,
                                            child: Container(
                                              height: 24,
                                              width: 24,
                                              decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                                              child: Center(
                                                child: Icon(
                                                  Icons.favorite,
                                                  color: Colors.red,
                                                  size: 16,
                                                ),
                                              ),
                                            ),
                                          ),
                                          right: 20,
                                          bottom: 12,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(

                              child: Stack(
                                children: [
                                  Positioned(
                                    child: Card(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Spacer(),
                                            Text(
                                              "Simply crunchy".toUpperCase(),
                                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                                            ),
                                            Text(
                                              "Crunchy WHITE".toUpperCase(),
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold, color: Colors.red, fontSize: 10),
                                            ),
                                            Text(
                                              "\$5.99".toUpperCase(),
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    top: 48,
                                    left: 8,
                                    right: 8,
                                    bottom: 0,
                                  ),
                                  Positioned(
                                    child: Image.asset("assets/img/cheetos.png"),
                                    top: 0,
                                    left: 24,
                                    right: 24,
                                    bottom: 54,
                                  ),
                                  Positioned(
                                    child: PhysicalModel(
                                      color: Colors.grey,
                                      shape: BoxShape.circle,
                                      elevation: 2,
                                      child: Container(
                                        height: 24,
                                        width: 24,
                                        decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                                        child: Center(
                                          child: Icon(
                                            Icons.favorite,
                                            color: Colors.red,
                                            size: 16,
                                          ),
                                        ),
                                      ),
                                    ),
                                    right: 20,
                                    bottom: 12,
                                  ),
                                ],
                              ),
                            ),
                            Container(

                              child: Stack(
                                children: [
                                  Positioned(
                                    child: Card(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Spacer(),
                                            Text(
                                              "Simply crunchy".toUpperCase(),
                                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                                            ),
                                            Text(
                                              "Crunchy WHITE".toUpperCase(),
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold, color: Colors.red, fontSize: 10),
                                            ),
                                            Text(
                                              "\$5.99".toUpperCase(),
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    top: 48,
                                    left: 8,
                                    right: 8,
                                    bottom: 0,
                                  ),
                                  Positioned(
                                    child: Image.asset("assets/img/cheetos.png"),
                                    top: 0,
                                    left: 24,
                                    right: 24,
                                    bottom: 54,
                                  ),
                                  Positioned(
                                    child: PhysicalModel(
                                      color: Colors.grey,
                                      shape: BoxShape.circle,
                                      elevation: 2,
                                      child: Container(
                                        height: 24,
                                        width: 24,
                                        decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                                        child: Center(
                                          child: Icon(
                                            Icons.favorite,
                                            color: Colors.red,
                                            size: 16,
                                          ),
                                        ),
                                      ),
                                    ),
                                    right: 20,
                                    bottom: 12,
                                  ),
                                ],
                              ),
                            ),
                            Container(

                              child: Stack(
                                children: [
                                  Positioned(
                                    child: Card(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Spacer(),
                                            Text(
                                              "Simply crunchy".toUpperCase(),
                                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                                            ),
                                            Text(
                                              "Crunchy WHITE".toUpperCase(),
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold, color: Colors.red, fontSize: 10),
                                            ),
                                            Text(
                                              "\$5.99".toUpperCase(),
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    top: 48,
                                    left: 8,
                                    right: 8,
                                    bottom: 0,
                                  ),
                                  Positioned(
                                    child: Image.asset("assets/img/cheetos.png"),
                                    top: 0,
                                    left: 24,
                                    right: 24,
                                    bottom: 54,
                                  ),
                                  Positioned(
                                    child: PhysicalModel(
                                      color: Colors.grey,
                                      shape: BoxShape.circle,
                                      elevation: 2,
                                      child: Container(
                                        height: 24,
                                        width: 24,
                                        decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                                        child: Center(
                                          child: Icon(
                                            Icons.favorite,
                                            color: Colors.red,
                                            size: 16,
                                          ),
                                        ),
                                      ),
                                    ),
                                    right: 20,
                                    bottom: 12,
                                  ),
                                ],
                              ),
                            ),
                            Container(

                              child: Stack(
                                children: [
                                  Positioned(
                                    child: Card(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Spacer(),
                                            Text(
                                              "Simply crunchy".toUpperCase(),
                                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                                            ),
                                            Text(
                                              "Crunchy WHITE".toUpperCase(),
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold, color: Colors.red, fontSize: 10),
                                            ),
                                            Text(
                                              "\$5.99".toUpperCase(),
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    top: 48,
                                    left: 8,
                                    right: 8,
                                    bottom: 0,
                                  ),
                                  Positioned(
                                    child: Image.asset("assets/img/cheetos.png"),
                                    top: 0,
                                    left: 24,
                                    right: 24,
                                    bottom: 54,
                                  ),
                                  Positioned(
                                    child: PhysicalModel(
                                      color: Colors.grey,
                                      shape: BoxShape.circle,
                                      elevation: 2,
                                      child: Container(
                                        height: 24,
                                        width: 24,
                                        decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                                        child: Center(
                                          child: Icon(
                                            Icons.favorite,
                                            color: Colors.red,
                                            size: 16,
                                          ),
                                        ),
                                      ),
                                    ),
                                    right: 20,
                                    bottom: 12,
                                  ),
                                ],
                              ),
                            ),
                            Container(

                              child: Stack(
                                children: [
                                  Positioned(
                                    child: Card(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Spacer(),
                                            Text(
                                              "Simply crunchy".toUpperCase(),
                                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                                            ),
                                            Text(
                                              "Crunchy WHITE".toUpperCase(),
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold, color: Colors.red, fontSize: 10),
                                            ),
                                            Text(
                                              "\$5.99".toUpperCase(),
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    top: 48,
                                    left: 8,
                                    right: 8,
                                    bottom: 0,
                                  ),
                                  Positioned(
                                    child: Image.asset("assets/img/cheetos.png"),
                                    top: 0,
                                    left: 24,
                                    right: 24,
                                    bottom: 54,
                                  ),
                                  Positioned(
                                    child: PhysicalModel(
                                      color: Colors.grey,
                                      shape: BoxShape.circle,
                                      elevation: 2,
                                      child: Container(
                                        height: 24,
                                        width: 24,
                                        decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                                        child: Center(
                                          child: Icon(
                                            Icons.favorite,
                                            color: Colors.red,
                                            size: 16,
                                          ),
                                        ),
                                      ),
                                    ),
                                    right: 20,
                                    bottom: 12,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        flex: 20,
                      ),
                    ],
                  ),
                ),
                flex: 18,
              ),
            ],
          ),
        ));
  }
}
