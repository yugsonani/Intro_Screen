import 'package:flutter/material.dart';
import 'package:intro_screen/page1.dart';
import 'package:intro_screen/page2.dart';
import 'package:intro_screen/page3.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'global.dart';
import 'homepage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool? firstVisited = prefs.getBool('first') ?? false;
  bool? secondVisited = prefs.getBool('second') ?? false;
  bool? thirdVisited = prefs.getBool('third') ?? false;
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => MyApp(),
      '1': (context) => First(),
      '2': (context) => Second(),
      '3': (context) => Third(),
      'homePage': (context) => HomePage()
    },
    initialRoute: (firstVisited == false)
        ? '1'
        : (secondVisited == false)
            ? '2'
            : (thirdVisited == false)
                ? '3'
                : 'homePage',
  ));
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        onPageChanged: (val) {
          setState(() {});
        },
        controller: Global.pageController,
        children: Global.pages,
      ),
      // body: Global.pages[Global.i],
    );
  }
}
