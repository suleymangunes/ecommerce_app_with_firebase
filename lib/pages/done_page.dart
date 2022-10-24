import '../constants/myconstants.dart';
import 'sign_up_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class DonePAge extends StatefulWidget {
  const DonePAge({Key? key}) : super(key: key);

  @override
  State<DonePAge> createState() => _DonePAgeState();
}

class _DonePAgeState extends State<DonePAge> {
  @override
  void initState() {
    close();
    super.initState();
  }

  Future<void> close() async {
    await Future.delayed(const Duration(milliseconds: 1800));
    Get.offAll(const SingUpPage());
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
              "Dorilla Ailesine Hoşgeldin\n",
              style: TextStyle(fontSize: Get.width * 0.04, color: MyConstants.instance.bitterSweet),
            ),
          ],
        ),
      ),
    );
  }
}
