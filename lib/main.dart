import 'package:dorilla/constants/material_color.dart';
import 'package:dorilla/constants/myconstants.dart';
import 'package:dorilla/service/firebase_options.dart';
import 'package:dorilla/pages/home_page.dart';
import 'package:dorilla/pages/intropage.dart';
import 'package:dorilla/service/auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final AuthService _auth = AuthService();

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
        home: _auth.issignin() == null ? const PageViewDesign() : const MyHomePage());
  }
}
