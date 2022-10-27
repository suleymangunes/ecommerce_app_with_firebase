import 'package:dorilla/constants/myconstants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "My Cart",
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
                              Spacer(),
                              ElevatedButton(
                                  onPressed: (() {}),
                                  style: ButtonStyle(shape: MaterialStateProperty.all(CircleBorder())),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(Icons.add),
                                  )),
                              Text(
                                "1",
                                style: TextStyle(fontSize: Get.width * 0.04),
                              ),
                              ElevatedButton(
                                  onPressed: (() {}),
                                  style: ButtonStyle(shape: MaterialStateProperty.all(CircleBorder())),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(Icons.delete),
                                  ))
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
      floatingActionButton: FloatingActionButton.extended(
        onPressed: (() {}),
        label: Padding(
          padding: EdgeInsets.symmetric(vertical: Get.width * 0.1),
          child: Text(
            "Alışverişi Tamamla",
            style: TextStyle(fontSize: Get.width * 0.04),
          ),
        ),
      ),
    );
  }
}
