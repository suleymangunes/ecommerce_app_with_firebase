import 'package:dorilla/pages/sign_up_page.dart';
import 'package:dorilla/service/auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(child: Text("this is my profile page")),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: (() {
                    print("${_auth.issignin()}");
                  }),
                  child: const Text("anasayfa"),
                ),
                ElevatedButton(
                  onPressed: (() {
                    _auth.signOut().whenComplete(() {
                      _auth.signOutWithGoogle();
                      Get.offAll(const SingUpPage());
                    });
                  }),
                  child: const Text("cikis yap"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
