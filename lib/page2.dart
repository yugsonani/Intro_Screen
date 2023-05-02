import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'global.dart';

class Second extends StatefulWidget {
  Second({Key? key}) : super(key: key);

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
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
                    TextButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, '/');
                        },
                        child: Text(
                          "Back",
                          style: Global.bottomText,
                        )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.circle,
                          color: Colors.cyan.shade700.withOpacity(0.2),
                          size: 10,
                        ),
                        Icon(
                          Icons.circle,
                          color: (Global.i == 1)
                              ? Colors.cyan.shade700.withOpacity(0.2)
                              : Colors.cyan.shade700,
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
                  "asset/imeg/Explore Courses.jpg",
                  height: 200,
                ),
                Spacer(),
                Text(
                  "Explore Courses",
                  style: Global.title,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Choose which course suitable for you to enroll in",
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
                    padding: EdgeInsets.only(top: 100),
                    child: FloatingActionButton(
                      onPressed: () async {
                        SharedPreferences prefs =
                            await SharedPreferences.getInstance();
                        prefs.setBool('second', true);
                        Navigator.pushReplacementNamed(context, '3');
                      },
                      backgroundColor: Colors.green,
                      child: Icon(Icons.arrow_forward),
                    ),
                  )),
            ),
          ])
        ],
      ),
    ));
  }
}
