import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rive/rive.dart';

import '../constants/myconstants.dart';
import '../service/auth.dart';
import 'home_page.dart';
import 'register_page.dart';

class SingUpPage extends StatefulWidget {
  const SingUpPage({Key? key}) : super(key: key);

  @override
  State<SingUpPage> createState() => _SingUpPageState();
}

class _SingUpPageState extends State<SingUpPage> {
  final AuthService _auth = AuthService();
  final _formkey = GlobalKey<FormState>();
  final TextEditingController _controllerMail = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();
  bool _butstate = false;

  @override
  void dispose() {
    _controllerMail.dispose();
    _controllerPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: Get.height * 0.05,
                ),
                Image.asset(
                  "assets/logo_without_pad.png",
                  height: Get.height * 0.1,
                ),
                SizedBox(
                  height: Get.height * 0.15,
                ),
                SizedBox(
                  width: Get.width * 0.8,
                  child: TextFormField(
                    controller: _controllerMail,
                    style: TextStyle(fontSize: Get.width * 0.04),
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.mail_outline_rounded),
                        contentPadding: EdgeInsets.symmetric(horizontal: Get.width * 0.04, vertical: Get.width * 0.04),
                        labelText: "Email",
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Mail alanı boş bırakılamaz.";
                      }
                      if (EmailValidator.validate(value) == false) {
                        return "Lütfen geçerli bir mail girin.";
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                SizedBox(
                  width: Get.width * 0.8,
                  child: TextFormField(
                    controller: _controllerPassword,
                    obscureText: true,
                    enableSuggestions: false,
                    autocorrect: false,
                    style: TextStyle(fontSize: Get.width * 0.04),
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.key_rounded),
                        contentPadding: EdgeInsets.symmetric(horizontal: Get.width * 0.04, vertical: Get.width * 0.04),
                        labelText: "Şifre",
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Şifre boş olamaz";
                      }
                      if (value.length <= 8) {
                        return "Şifre 8 karakterden büyük olmalıdır.";
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.03,
                ),
                SizedBox(
                  width: Get.width * 0.79,
                  child: Hero(
                    tag: "basla",
                    child: ElevatedButton(
                      style: ButtonStyle(
                          elevation: MaterialStateProperty.all(5),
                          backgroundColor: MaterialStateProperty.all(MyConstants.instance.bitterSweet),
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)))),
                      onPressed: (() {
                        if (_formkey.currentState!.validate()) {
                          setState(() {
                            _butstate = true;
                          });
                          _auth.signIn(_controllerMail.text, _controllerPassword.text).catchError((dynamic error) {
                            Get.offAll(const SingUpPage());
                            Future.delayed(const Duration(microseconds: 1));
                            Get.defaultDialog(
                                title: "Something Went Wrong",
                                titlePadding: EdgeInsets.all(Get.height * 0.02),
                                content: Text(
                                  error.message,
                                  style: TextStyle(fontSize: Get.width * 0.035),
                                  textAlign: TextAlign.center,
                                ),
                                contentPadding: EdgeInsets.symmetric(horizontal: Get.width * 0.05),
                                confirm: Padding(
                                  padding: EdgeInsets.only(bottom: Get.height * 0.01),
                                  child: TextButton(
                                      onPressed: (() {
                                        Get.back();
                                      }),
                                      child: Text("Try Again", style: TextStyle(fontSize: Get.width * 0.030))),
                                ));
                          }).then((value) {
                            print("burda giris yapti ancak anlamadim");
                            print("olmasi gereken deger $value");
                            if (value != null) {
                              Get.offAll(const MyHomePage());
                            }
                          });
                        }
                      }),
                      child: _butstate
                          ? SizedBox(height: Get.height * 0.065, width: 80, child: const RiveAnimation.asset("assets/loading.riv"))
                          : Padding(
                              padding: EdgeInsets.symmetric(horizontal: Get.width * 0.04, vertical: Get.width * 0.040),
                              child: Text(
                                "Giriş Yap",
                                style: TextStyle(fontSize: Get.width * 0.05, letterSpacing: 3),
                              ),
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
                      await _auth.signInWithGoogle().catchError((dynamic error) {
                        Get.defaultDialog(
                            title: "Something Went Wrong",
                            titlePadding: EdgeInsets.all(Get.height * 0.02),
                            content: Text(
                              error.message,
                              style: TextStyle(fontSize: Get.width * 0.035),
                              textAlign: TextAlign.center,
                            ),
                            contentPadding: EdgeInsets.symmetric(horizontal: Get.width * 0.05),
                            confirm: Padding(
                              padding: EdgeInsets.only(bottom: Get.height * 0.01),
                              child: TextButton(
                                  onPressed: (() {
                                    Get.back();
                                  }),
                                  child: Text("Try Again", style: TextStyle(fontSize: Get.width * 0.030))),
                            ));
                      }).then((value) {
                        Get.offAll(const MyHomePage());
                      });
                    }),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: Get.width * 0.04, vertical: Get.width * 0.030),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                  height: Get.height * 0.2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Hesabın yok mu?",
                      style: TextStyle(fontSize: Get.width * 0.03),
                    ),
                    TextButton(
                        onPressed: (() {
                          Get.to(const RegisterPage(), duration: const Duration(seconds: 1));
                        }),
                        child: Text(
                          "Hemen Oluştur",
                          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600, fontSize: Get.width * 0.03),
                        ))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
