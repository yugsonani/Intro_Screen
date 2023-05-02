import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'global.dart';

class First extends StatefulWidget {
  const First({Key? key}) : super(key: key);

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  int i = 0;
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
              color: Colors.lightBlueAccent.shade100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(width: 150),
                          Icon(
                            Icons.circle,
                            color: (Global.i == 0)
                                ? Colors.cyan.shade700
                                : Colors.cyan.shade700.withOpacity(0.2),
                            size: 10,
                          ),
                          Icon(
                            Icons.circle,
                            color: Colors.cyan.shade700.withOpacity(0.2),
                            size: 10,
                          ),
                          Icon(
                            Icons.circle,
                            color: Colors.cyan.shade700.withOpacity(0.2),
                            size: 10,
                          )
                        ],
                      ),
                      TextButton(
                        child: Text(
                          "Skip",
                          style: Global.bottomText,
                        ),
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, 'homePage');
                        },
                      )
                    ],
                  )
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
                  Spacer(
                    flex: 1,
                  ),
                  Image.asset(
                    "asset/imeg/child-with-tablet-book_7710-105-removebg-preview.png",
                    height: 200,
                  ),
                  Spacer(),
                  Text(
                    "Start Learning",
                    style: Global.title,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Start learning now by using this app,Get you choosen course and start th journey.",
                    style: Global.subTitle,
                    textAlign: TextAlign.center,
                  ),
                  Spacer(
                    flex: 6,
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
                      padding: const EdgeInsets.only(top: 100),
                      child: FloatingActionButton(
                        onPressed: () async {
                          SharedPreferences prefs =
                              await SharedPreferences.getInstance();
                          prefs.setBool('first', true);
                          Navigator.pushReplacementNamed(context, '2');
                        },
                        backgroundColor: Colors.green,
                        child: Icon(Icons.arrow_forward),
                      ),
                    )),
              ),
            ])
          ],
        ),
      ),
    );
  }
}
