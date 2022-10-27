import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../pages/sign_up_page.dart';
import '../service/auth.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          const Center(child: Text("this is my profile page")),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: (() {}),
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
