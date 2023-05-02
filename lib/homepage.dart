import 'package:flutter/material.dart';

import 'global.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            padding: EdgeInsets.all(10),
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.pink,
                  Colors.red,
                  Colors.orange,
                  Colors.brown,
                  Colors.green,
                  Colors.teal,
                  Colors.blue.shade800,
                ],
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/');
                    },
                    child: Text(
                      "Back",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    )),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            height: 600,
            width: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(70),
                  bottomRight: Radius.circular(70)),
              color: Colors.white,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    child:
                        Image.asset("asset/imeg/welcome-removebg-preview.png")),
                Text(
                  "Welcome ",
                  style: Global.title,
                ),
              ],
            ),
          ),
          Stack(children: [
            Align(
              alignment: Alignment(0, 0.65),
              child: CircleAvatar(
                  radius: 110,
                  backgroundColor: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.only(top: 100),
                    child: Container(
                      width: 100,
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Image.network(
                          "https://i.gifer.com/origin/be/be9fcf44faa0cc41b8fd5a274be49acb_w200.gif"),
                    ),
                  )),
            ),
          ])
        ],
      ),
    ));
  }
}
