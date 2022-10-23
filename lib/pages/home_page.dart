import 'package:dorilla/introscreens/intropage1.dart';
import 'package:dorilla/main.dart';
import 'package:dorilla/pages/intropage.dart';
import 'package:dorilla/pages/sign_up_page.dart';
import 'package:dorilla/service/auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (() {
                print("${_auth.issignin()}");
              }),
              child: Text("anasayfa"),
            ),
            ElevatedButton(
              onPressed: (() {
                _auth.signOut().whenComplete(() {
                  _auth.signOutWithGoogle();
                  Get.offAll(const SingUpPage());
                });
              }),
              child: Text("cikis yap"),
            ),
          ],
        ),
      ),
    );
  }
}
