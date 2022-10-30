import 'package:dorilla/constants/myconstants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FovoritedPage extends StatefulWidget {
  const FovoritedPage({Key? key}) : super(key: key);

  @override
  State<FovoritedPage> createState() => _FovoritedPageState();
}

class _FovoritedPageState extends State<FovoritedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "My Favorites",
          style: TextStyle(fontSize: Get.width * 0.045, color: Colors.black),
        ),
      ),
      body: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemBuilder: ((context, index) {
            return SizedBox(
              height: Get.height * 0.15,
              child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                elevation: 5,
                margin: EdgeInsets.symmetric(horizontal: Get.width * 0.03, vertical: Get.height * 0.01),
                child: Row(
                  children: [
                    SizedBox(
                      width: Get.width * 0.02,
                    ),
                    SizedBox(
                        height: Get.height * 0.13,
                        width: Get.height * 0.13,
                        child: Image.network(
                          "https://productimages.hepsiburada.net/s/245/600-800/110000232203263.jpg/format:webp",
                          fit: BoxFit.cover,
                        )),
                    SizedBox(
                      width: Get.width * 0.03,
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: Get.height * 0.025,
                        ),
                        SizedBox(
                          width: Get.width * 0.6,
                          child: Text(
                            "Nike Air Jordon 1 Low Bulls Erkek Spor Ayakkabı",
                            style: TextStyle(overflow: TextOverflow.ellipsis, fontSize: Get.width * 0.04),
                          ),
                        ),
                        SizedBox(
                          height: Get.height * 0.025,
                        ),
                        SizedBox(
                          width: Get.width * 0.55,
                          child: Row(
                            children: [
                              Text(
                                "4.325,09 ",
                                style: TextStyle(overflow: TextOverflow.ellipsis, fontSize: Get.width * 0.04, fontWeight: FontWeight.bold),
                              ),
                              Text("TL", style: TextStyle(fontSize: Get.width * 0.03, fontWeight: FontWeight.bold)),
                              SizedBox(
                                width: Get.width * 0.15,
                              ),
                              Icon(Icons.favorite, size: Get.width * 0.07, color: MyConstants.instance.bitterSweet)
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            );
          })),
    ));
  }
}
