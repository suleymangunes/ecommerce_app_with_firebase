import 'package:dorilla/constants/myconstants.dart';
import 'package:dorilla/service/auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class SingUpPage extends StatefulWidget {
  const SingUpPage({Key? key}) : super(key: key);

  @override
  State<SingUpPage> createState() => _SingUpPageState();
}

class _SingUpPageState extends State<SingUpPage> {
  AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: Get.height * 0.1,
            ),
            Image.asset(
              "assets/logo_without_pad.png",
              height: Get.height * 0.1,
            ),
            SizedBox(
              height: Get.height * 0.1,
            ),
            SizedBox(
              width: Get.width * 0.8,
              child: TextFormField(
                style: TextStyle(fontSize: Get.width * 0.04),
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: Get.width * 0.04, vertical: Get.width * 0.04),
                    labelText: "Email",
                    // labelStyle: TextStyle(fontSize: Get.width * 0.06),
                    // hintText: "Email Gir",
                    // enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                    // focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
              ),
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            SizedBox(
              width: Get.width * 0.8,
              child: TextFormField(
                style: TextStyle(fontSize: Get.width * 0.04),
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: Get.width * 0.04, vertical: Get.width * 0.04),
                    labelText: "Şifre",
                    // labelStyle: TextStyle(fontSize: Get.width * 0.06),
                    // hintText: "Email Gir",
                    // enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                    // focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
              ),
            ),
            SizedBox(
              height: Get.height * 0.03,
            ),
            SizedBox(
              width: Get.width * 0.79,
              // height: 50,
              child: ElevatedButton(
                style: ButtonStyle(
                    elevation: MaterialStateProperty.all(5),
                    backgroundColor: MaterialStateProperty.all(MyConstants.instance.bitterSweet),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)))),
                onPressed: (() async {
                  print("merhabba");
                  await _auth.signOutWithGoogle()
                      // .onError(
                      //   (error, stackTrace) {
                      //     return Future.delayed(Duration(seconds: 1));
                      //   })
                      ;
                }),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: Get.width * 0.04, vertical: Get.width * 0.04),
                  child: Text(
                    "Giriş Yap",
                    style: TextStyle(fontSize: Get.width * 0.05, letterSpacing: 3),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            SizedBox(
              width: Get.width * 0.79,
              child: ElevatedButton(
                style: ButtonStyle(
                    elevation: MaterialStateProperty.all(5),
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)))),
                onPressed: (() async {
                  print("merhabba");
                  await _auth.signInWithGoogle()
                      // .onError(
                      //   (error, stackTrace) {
                      //     return Future.delayed(Duration(seconds: 1));
                      //   })
                      ;
                }),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: Get.width * 0.04, vertical: Get.width * 0.04),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    // crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(height: Get.width * 0.05, child: Image.asset("assets/google.png")),
                      Text(
                        "Google İle Devam Et",
                        style: TextStyle(fontWeight: FontWeight.w400, fontSize: Get.width * 0.035, letterSpacing: 2, color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: Get.height * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("hesabın yok mu?"),
                Text(
                  "o zaman kaydol amk",
                  style: TextStyle(fontWeight: FontWeight.w600),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
