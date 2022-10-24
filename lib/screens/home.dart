import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../pages/search_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: Get.height * 0.1,
        backgroundColor: Colors.white,
        leading: Container(
          padding: EdgeInsets.only(left: Get.height * 0.01, top: Get.height * 0.01),
          // margin: EdgeInsets.all(Get.width * 0.01),
          child: Image.asset(
            "assets/dorilla_logo_without_pad.png",
          ),
        ),
        title: Hero(
          tag: "search",
          child: Align(
            alignment: Alignment.center,
            child: ElevatedButton(
                style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all(Size(Get.width * 0.65, Get.height * 0.06)),
                    elevation: MaterialStateProperty.all(5),
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)))),
                onPressed: (() {
                  Get.to(const SearchPage());
                }),
                child: Row(
                  children: [
                    const Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: Get.width * 0.01),
                      child: const Text(
                        "Search something...",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ],
                )),
          ),
        ),
        actions: [
          Padding(
              padding: EdgeInsets.only(right: Get.height * 0.02, top: Get.height * 0.01),
              child: Icon(
                Icons.shopping_cart_outlined,
                size: Get.width * 0.08,
              ))
        ],
      ),
      body: const Center(child: Text("this is my home page")),
    );
  }
}
