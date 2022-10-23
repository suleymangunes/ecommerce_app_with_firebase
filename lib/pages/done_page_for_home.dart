import 'package:dorilla/constants/myconstants.dart';
import 'package:dorilla/pages/home_page.dart';
import 'package:dorilla/pages/sign_up_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class DonePAgeForHome extends StatefulWidget {
  const DonePAgeForHome({Key? key}) : super(key: key);

  @override
  State<DonePAgeForHome> createState() => _DonePAgeForHomeState();
}

class _DonePAgeForHomeState extends State<DonePAgeForHome> {
  @override
  void initState() {
    close();
    super.initState();
  }

  Future<void> close() async {
    await Future.delayed(const Duration(milliseconds: 1800));
    Get.offAll(const MyHomePage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset("assets/done.json"),
            Text(
              "Dorillaya Hoşgeldin",
              style: TextStyle(fontSize: Get.width * 0.04, color: MyConstants.instance.bitterSweet),
            ),
          ],
        ),
      ),
    );
  }
}
