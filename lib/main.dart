import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:path_provider/path_provider.dart';

import 'constants/material_color.dart';
import 'constants/myconstants.dart';
import 'service/firebase_options.dart';
import 'pages/home_page.dart';
import 'pages/intropage.dart';
import 'service/auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

dosyayukle() async {
  final storageRef = FirebaseStorage.instance.ref();

  final linkListe = [];
  final imageUrl = await storageRef.child("reklamlar/").listAll();
  for (var i in imageUrl.items) {
    linkListe.add(await storageRef.child("reklamlar/${i.name}").getDownloadURL());
  }
  return linkListe;
}

reklamListem() async {
  final storageRef = FirebaseStorage.instance.ref();

  final linkListe = [];
  final imageUrl = await storageRef.child("reklamlar/").listAll();
  for (var i in imageUrl.items) {
    linkListe.add(await storageRef.child("reklamlar/${i.name}").getDownloadURL());
  }
  return linkListe;
}

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
