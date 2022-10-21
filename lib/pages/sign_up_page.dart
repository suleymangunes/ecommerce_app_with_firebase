import 'package:dorilla/constants/myconstants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SingUpPage extends StatefulWidget {
  const SingUpPage({Key? key}) : super(key: key);

  @override
  State<SingUpPage> createState() => _SingUpPageState();
}

class _SingUpPageState extends State<SingUpPage> {
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
                    contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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
                    contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    labelText: "Şifre",
                    // labelStyle: TextStyle(fontSize: Get.width * 0.06),
                    // hintText: "Email Gir",
                    // enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                    // focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
