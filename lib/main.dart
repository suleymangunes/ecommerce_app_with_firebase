import 'package:dorilla/constants/material_color.dart';
import 'package:dorilla/constants/myconstants.dart';
import 'package:dorilla/firebase_options.dart';
import 'package:dorilla/pages/intropage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

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
