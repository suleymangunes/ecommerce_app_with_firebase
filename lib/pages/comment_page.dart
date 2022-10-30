import 'package:dorilla/constants/myconstants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class CommentPage extends StatefulWidget {
  const CommentPage({Key? key}) : super(key: key);

  @override
  State<CommentPage> createState() => _CommentPageState();
}

class _CommentPageState extends State<CommentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Comments",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: Get.width * 0.05,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.star,
                color: Colors.yellow,
                size: Get.width * 0.06,
              ),
              Icon(
                Icons.star,
                color: Colors.yellow,
                size: Get.width * 0.06,
              ),
              Icon(
                Icons.star,
                color: Colors.yellow,
                size: Get.width * 0.06,
              ),
              Icon(
                Icons.star,
                color: Colors.yellow,
                size: Get.width * 0.06,
              ),
              Icon(
                Icons.star,
                color: Colors.yellow,
                size: Get.width * 0.06,
              ),
              Text(" 4.7", style: TextStyle(fontSize: Get.width * 0.05, fontWeight: FontWeight.w500)),
              Text(" (4)", style: TextStyle(fontSize: Get.width * 0.045)),
            ],
          ),
          SizedBox(
            height: Get.width * 0.04,
          ),
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: Get.width * 0.05),
                child: Text("Bu ürün ile ilgili 4 değerlendirme var.", style: TextStyle(fontSize: Get.width * 0.035)),
              )),
          SizedBox(
            height: Get.width * 0.04,
          ),
          Expanded(
            child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemBuilder: ((context, index) {
                  return Card(
                    elevation: 3,
                    margin: EdgeInsets.symmetric(horizontal: Get.width * 0.03, vertical: Get.width * 0.03),
                    child: Column(
                      children: [
                        SizedBox(height: Get.width * 0.02),
                        Row(
                          children: [
                            SizedBox(width: Get.width * 0.02),
                            Container(
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(Get.width), color: Colors.grey.shade200),
                              child: Padding(
                                padding: EdgeInsets.all(Get.width * 0.02),
                                child: Icon(
                                  Icons.person,
                                  size: Get.width * 0.07,
                                  color: MyConstants.instance.bitterSweet,
                                ),
                              ),
                            ),
                            SizedBox(width: Get.width * 0.03),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(" S****** G***** (21)", style: TextStyle(fontSize: Get.width * 0.035, fontWeight: FontWeight.w400)),
                                SizedBox(height: Get.width * 0.02),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: Get.width * 0.035,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: Get.width * 0.035,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: Get.width * 0.035,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: Get.width * 0.035,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.grey,
                                      size: Get.width * 0.035,
                                    ),
                                    Text("  16 Şubat 2020, Pazar", style: TextStyle(fontSize: Get.width * 0.025)),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.all(Get.width * 0.035),
                          child: Container(
                              alignment: Alignment.centerLeft,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: Colors.grey.shade200),
                              child: Padding(
                                padding: EdgeInsets.all(Get.width * 0.03),
                                child: Text(
                                    "Ürünü çok beğendim. Basketbol oynarken yer tutuşu çok iyi oluyor. Gayet rahat ve şık bir ayakkabı. Michael Jordona olan saygımdan dolayı aldım."),
                              )),
                        )
                      ],
                    ),
                  );
                }),
                itemCount: 10),
          )
        ],
      ),
    );
  }
}
