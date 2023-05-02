import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'global.dart';

class Third extends StatefulWidget {
  const Third({Key? key}) : super(key: key);

  @override
  State<Third> createState() => _ThirdState();
}

class _ThirdState extends State<Third> {
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
                          color: Colors.cyan.shade700.withOpacity(0.2),
                          size: 10,
                        ),
                        Icon(
                          Icons.circle,
                          color: (Global.i == 2)
                              ? Colors.cyan.shade700.withOpacity(0.2)
                              : Colors.cyan.shade700,
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
                  "asset/imeg/At-Any-Time1-unscreen.gif",
                  height: 200,
                ),
                Spacer(),
                Text(
                  "At Any Time",
                  style: Global.title,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Your courses are available at any time you want. Join us now !",
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
                        prefs.setBool('third', true);
                        Navigator.pushReplacementNamed(context, 'homePage');
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
