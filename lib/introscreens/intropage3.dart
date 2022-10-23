import 'package:dorilla/constants/myconstants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../pages/sign_up_page.dart';

class IntroPage3 extends StatelessWidget {
  const IntroPage3({Key? key}) : super(key: key);

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
                "Dorilla İle Alışverişin Tadını Çıkarmak İçin Hemen Başla",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: Get.width * 0.06, fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: Get.height * 0.15,
            ),
            Lottie.asset("assets/a3.zip", height: Get.height * 0.3),
            SizedBox(
              height: Get.height * 0.20,
            ),
            SizedBox(
              height: Get.height * 0.05,
              width: Get.width * 0.5,
              child: Hero(
                tag: "basla",
                child: ElevatedButton(
                  style: ButtonStyle(
                      elevation: MaterialStateProperty.all(5),
                      backgroundColor: MaterialStateProperty.all(MyConstants.instance.bitterSweet),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)))),
                  onPressed: (() {
                    Get.to(const SingUpPage(), duration: Duration(seconds: 1));
                  }),
                  child: Text(
                    "BAŞLA",
                    style: TextStyle(fontSize: Get.width * 0.06, letterSpacing: 3),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: Get.height * 0.05,
            ),
          ],
        ),
      ),
    );
  }
}
