import 'package:dorilla/constants/material_color.dart';
import 'package:dorilla/constants/myconstants.dart';
import 'package:dorilla/pages/intropage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        theme: ThemeData(
            scaffoldBackgroundColor: Colors.white,
            primarySwatch: buildMaterialColor(MyConstants.instance.bitterSweet),
            appBarTheme: AppBarTheme(
                iconTheme: IconThemeData(size: Get.width * 0.07, color: MyConstants.instance.bitterSweet),
                elevation: 0,
                backgroundColor: Colors.white)),
        title: 'Material App',
        debugShowCheckedModeBanner: false,
        home: const PageViewDesign());
  }
}
