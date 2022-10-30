import 'package:dorilla/constants/myconstants.dart';
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
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: Get.width * 0.02),
            child: Icon(
              Icons.edit,
              size: Get.width * 0.07,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: Get.height * 0.5,
            child: Card(
              elevation: 0,
              // color: Colors.amber,
              margin: EdgeInsets.all(Get.width * 0.02),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(Get.width),
                      child: Image.network(
                        "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f9/Hailey_Bieber_2020_2.jpg/640px-Hailey_Bieber_2020_2.jpg",
                        height: Get.width * 0.3,
                        width: Get.width * 0.3,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Get.height * 0.01,
                  ),
                  SizedBox(
                    width: Get.width,
                    child: Card(
                        child: Padding(
                      padding: EdgeInsets.symmetric(vertical: Get.width * 0.03, horizontal: Get.width * 0.01),
                      child: Row(
                        children: [
                          Icon(
                            Icons.person,
                            size: Get.width * 0.07,
                            color: MyConstants.instance.bitterSweetDark,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: Get.width * 0.02),
                            child: Text(
                              "Hailey Bieber",
                              style: TextStyle(fontSize: Get.width * 0.04),
                            ),
                          ),
                        ],
                      ),
                    )),
                  ),
                  SizedBox(
                    width: Get.width,
                    child: Card(
                        child: Padding(
                      padding: EdgeInsets.symmetric(vertical: Get.width * 0.03, horizontal: Get.width * 0.01),
                      child: Row(
                        children: [
                          Icon(
                            Icons.mail,
                            size: Get.width * 0.07,
                            color: MyConstants.instance.bitterSweetDark,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: Get.width * 0.02),
                            child: Text(
                              "haileybieber@mail.com",
                              style: TextStyle(fontSize: Get.width * 0.04),
                            ),
                          ),
                        ],
                      ),
                    )),
                  ),
                  SizedBox(
                    width: Get.width,
                    child: Card(
                        child: Padding(
                      padding: EdgeInsets.symmetric(vertical: Get.width * 0.03, horizontal: Get.width * 0.01),
                      child: Row(
                        children: [
                          Icon(
                            Icons.phone_android,
                            size: Get.width * 0.07,
                            color: MyConstants.instance.bitterSweetDark,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: Get.width * 0.02),
                            child: Text(
                              "0539 856 27 22",
                              style: TextStyle(fontSize: Get.width * 0.04),
                            ),
                          ),
                        ],
                      ),
                    )),
                  ),
                  SizedBox(
                    width: Get.width,
                    child: Card(
                        child: Padding(
                      padding: EdgeInsets.symmetric(vertical: Get.width * 0.03, horizontal: Get.width * 0.01),
                      child: Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            size: Get.width * 0.07,
                            color: MyConstants.instance.bitterSweetDark,
                          ),
                          SizedBox(
                            width: Get.width * 0.8,
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: Get.width * 0.02),
                              child: Text(
                                "Adres: Çaydaçıra, Anguzu Baba Sokak 50/1, 23350 Merkez/Elâzığ Merkez/Elazığ",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(fontSize: Get.width * 0.04),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )),
                  ),
                  // Center(
                  //   child: Column(
                  //     mainAxisAlignment: MainAxisAlignment.center,
                  //     children: [
                  //       ElevatedButton(
                  //         onPressed: (() {}),
                  //         child: const Text("anasayfa"),
                  //       ),
                  //       ElevatedButton(
                  //         onPressed: (() {
                  //           _auth.signOut().whenComplete(() {
                  //             _auth.signOutWithGoogle();
                  //             Get.offAll(const SingUpPage());
                  //           });
                  //         }),
                  //         child: const Text("cikis yap"),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: Get.width,
            child: Card(
                margin: EdgeInsets.all(Get.width * 0.02),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: Get.width * 0.03, horizontal: Get.width * 0.01),
                  child: Row(
                    children: [
                      Icon(
                        Icons.dark_mode,
                        size: Get.width * 0.07,
                        color: MyConstants.instance.bitterSweetDark,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: Get.width * 0.02),
                        child: Text(
                          "Dark Mode",
                          style: TextStyle(fontSize: Get.width * 0.04),
                        ),
                      ),
                    ],
                  ),
                )),
          ),
          SizedBox(
            width: Get.width,
            child: Card(
                margin: EdgeInsets.all(Get.width * 0.02),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: Get.width * 0.03, horizontal: Get.width * 0.01),
                  child: Row(
                    children: [
                      Icon(
                        Icons.language,
                        size: Get.width * 0.07,
                        color: MyConstants.instance.bitterSweetDark,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: Get.width * 0.02),
                        child: Text(
                          "Change Language",
                          style: TextStyle(fontSize: Get.width * 0.04),
                        ),
                      ),
                    ],
                  ),
                )),
          ),
          SizedBox(
            width: Get.width,
            child: InkWell(
              onTap: (() {
                _auth.signOut().whenComplete(() {
                  _auth.signOutWithGoogle();
                  Get.offAll(const SingUpPage());
                });
              }),
              child: Card(
                  margin: EdgeInsets.all(Get.width * 0.02),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: Get.width * 0.03, horizontal: Get.width * 0.01),
                    child: Row(
                      children: [
                        Icon(
                          Icons.exit_to_app,
                          size: Get.width * 0.07,
                          color: MyConstants.instance.bitterSweetDark,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: Get.width * 0.02),
                          child: Text(
                            "Exit",
                            style: TextStyle(fontSize: Get.width * 0.04),
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
