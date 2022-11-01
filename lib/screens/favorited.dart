import 'package:dorilla/constants/myconstants.dart';
import 'package:dorilla/pages/product_detail_page.dart';
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
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          physics: BouncingScrollPhysics(),
          itemBuilder: ((context, index) {
            return InkWell(
              onTap: (() {
                Get.to(ProductDetail());
              }),
              child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                elevation: 3,
                margin: EdgeInsets.symmetric(horizontal: Get.width * 0.04, vertical: Get.height * 0.01),
                child: Column(
                  children: [
                    SizedBox(
                        height: Get.width * 0.3,
                        width: Get.width * 0.3,
                        child: Image.network(
                          "https://productimages.hepsiburada.net/s/245/600-800/110000232203263.jpg/format:webp",
                          fit: BoxFit.fitWidth,
                        )),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: Get.width * 0.02),
                      child: Text(
                        "Nike Air Jordon 1 Low Bulls Erkek Spor Ayakkabı",
                        maxLines: 2,
                        style: TextStyle(overflow: TextOverflow.ellipsis, fontSize: Get.width * 0.03),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: Get.width * 0.02),
                      child: Row(
                        children: [
                          Text(
                            "4.325,09 ",
                            style: TextStyle(overflow: TextOverflow.ellipsis, fontSize: Get.width * 0.035, fontWeight: FontWeight.bold),
                          ),
                          Text("TL", style: TextStyle(fontSize: Get.width * 0.025, fontWeight: FontWeight.bold)),
                          Spacer(),
                          Icon(Icons.favorite, size: Get.width * 0.07, color: MyConstants.instance.bitterSweet)
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          })),
    ));
  }
}
