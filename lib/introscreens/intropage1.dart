import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: Get.height * 0.15,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Get.width * 0.05),
              child: Text(
                "İstediğin Her Şey Tek Bir Uygulamada",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: Get.width * 0.06, fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: Get.height * 0.15,
            ),
            Lottie.asset("assets/a1.zip", height: Get.height * 0.3),
          ],
        ),
      ),
    );
  }
}
