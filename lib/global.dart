import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:intro_screen/page1.dart';
import 'package:intro_screen/page2.dart';
import 'package:intro_screen/page3.dart';

class Global {
  static TextStyle title = TextStyle(
    fontSize: 22,
    color: Colors.black,
    fontWeight: FontWeight.w900,
  );
  static TextStyle subTitle = TextStyle(
    fontSize: 15,
    color: Colors.black,
    inherit: true,
  );
  static TextStyle bottomText = TextStyle(fontSize: 15, color: Colors.black);
  static int i = 0;
  static PageController pageController = PageController();
  static List<Widget> pages = [First(), Second(), Third()];
}
