import 'package:flutter/cupertino.dart';

class MyConstants {
  static MyConstants instance = MyConstants._init();
  MyConstants._init();

  final Color bitterSweetDark = const Color.fromARGB(255, 255, 81, 81);
  final Color bitterSweet = const Color(0xffFF6969);
  final Color bitterSweetLight = const Color.fromARGB(255, 255, 189, 189);
  final Color bitterSweetLight2x = Color.fromARGB(255, 255, 213, 213);
}
