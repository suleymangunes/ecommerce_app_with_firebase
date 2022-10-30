import 'package:dorilla/constants/myconstants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

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
                elevation: 3,
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
                          height: Get.height * 0.015,
                        ),
                        SizedBox(
                          width: Get.width * 0.55,
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "4.325,09 ",
                                        style: TextStyle(overflow: TextOverflow.ellipsis, fontSize: Get.width * 0.04, fontWeight: FontWeight.bold),
                                      ),
                                      Text("TL", style: TextStyle(fontSize: Get.width * 0.03, fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                  SizedBox(
                                    height: Get.width * 0.005,
                                  ),
                                  Text("42 Numara"),
                                ],
                              ),
                              Spacer(),
                              FloatingActionButton.small(
                                  backgroundColor: Colors.white,
                                  heroTag: "2$index",
                                  elevation: 3,
                                  onPressed: (() {}),
                                  child: Icon(
                                    Icons.delete,
                                    color: MyConstants.instance.bitterSweet,
                                  )),
                              Container(
                                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(7)),
                                child: Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Text(
                                    " 1 ",
                                    style: TextStyle(fontSize: Get.width * 0.04),
                                  ),
                                ),
                              ),
                              FloatingActionButton.small(
                                backgroundColor: Colors.white,
                                heroTag: "1$index",
                                elevation: 3,
                                onPressed: (() {}),
                                child: Icon(
                                  Icons.add,
                                  color: MyConstants.instance.bitterSweet,
                                ),
                              ),
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
      bottomNavigationBar: Container(
        height: Get.width * 0.15,
        child: Row(
          children: [
            SizedBox(
              width: Get.width * 0.03,
            ),
            SizedBox(
                height: Get.width * 0.1,
                width: Get.width * 0.44,
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Toplam",
                          style: TextStyle(fontSize: Get.width * 0.03),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "10.457,08 ",
                              style: TextStyle(fontSize: Get.width * 0.045, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "TL",
                              style: TextStyle(fontSize: Get.width * 0.03, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      width: Get.width * 0.04,
                    ),
                    IconButton(
                        onPressed: (() {
                          showBarModalBottomSheet(
                              context: context,
                              builder: ((context) {
                                return Container(
                                  height: 200,
                                  child: Column(
                                    children: [
                                      Align(
                                          alignment: Alignment.topRight,
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(horizontal: Get.width * 0.02),
                                            child: IconButton(
                                                onPressed: (() {
                                                  Get.back();
                                                }),
                                                icon: Icon(
                                                  Icons.keyboard_arrow_down,
                                                  size: Get.width * 0.07,
                                                  color: MyConstants.instance.bitterSweet,
                                                )),
                                          )),
                                      SizedBox(height: Get.width * 0.015),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.symmetric(horizontal: Get.width * 0.03),
                                            child: Text(
                                              "Ürünler",
                                              style: TextStyle(fontSize: Get.width * 0.04),
                                            ),
                                          ),
                                          Spacer(),
                                          Text(
                                            "10.447,08",
                                            style: TextStyle(fontSize: Get.width * 0.04, fontWeight: FontWeight.w500),
                                          ),
                                          Padding(
                                              padding: EdgeInsets.only(right: Get.width * 0.03),
                                              child: Icon(
                                                Icons.currency_lira,
                                                size: Get.width * 0.04,
                                              )),
                                        ],
                                      ),
                                      SizedBox(height: Get.width * 0.01),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.symmetric(horizontal: Get.width * 0.03),
                                            child: Text(
                                              "Kargo",
                                              style: TextStyle(fontSize: Get.width * 0.04),
                                            ),
                                          ),
                                          Spacer(),
                                          Text(
                                            "10,00",
                                            style: TextStyle(fontSize: Get.width * 0.04, fontWeight: FontWeight.w500),
                                          ),
                                          Padding(
                                              padding: EdgeInsets.only(right: Get.width * 0.03),
                                              child: Icon(
                                                Icons.currency_lira,
                                                size: Get.width * 0.04,
                                              )),
                                        ],
                                      ),
                                      SizedBox(height: Get.width * 0.01),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.symmetric(horizontal: Get.width * 0.03),
                                            child: Text(
                                              "İndirim",
                                              style: TextStyle(fontSize: Get.width * 0.04),
                                            ),
                                          ),
                                          Spacer(),
                                          Text(
                                            "0.00",
                                            style: TextStyle(fontSize: Get.width * 0.04, fontWeight: FontWeight.w500, color: Colors.green),
                                          ),
                                          Padding(
                                              padding: EdgeInsets.only(right: Get.width * 0.03),
                                              child: Icon(
                                                Icons.currency_lira,
                                                size: Get.width * 0.04,
                                                color: Colors.green,
                                              )),
                                        ],
                                      ),
                                      SizedBox(height: Get.width * 0.01),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.symmetric(horizontal: Get.width * 0.03),
                                            child: Text(
                                              "Toplam",
                                              style: TextStyle(fontSize: Get.width * 0.045),
                                            ),
                                          ),
                                          Spacer(),
                                          Text(
                                            "10.457,08",
                                            style: TextStyle(fontSize: Get.width * 0.045, fontWeight: FontWeight.w700),
                                          ),
                                          Padding(
                                              padding: EdgeInsets.only(right: Get.width * 0.03),
                                              child: Icon(
                                                Icons.currency_lira,
                                                size: Get.width * 0.04,
                                              )),
                                        ],
                                      )
                                    ],
                                  ),
                                );
                              }));

                          // showBottomSheet(
                          //     context: context,
                          //     builder: ((context) {
                          //       return SizedBox(
                          //         width: Get.width,
                          //         height: Get.height * 0.2,
                          //         child: Column(
                          //           children: [
                          //             Align(
                          //                 alignment: Alignment.topRight,
                          //                 child: Padding(
                          //                   padding: EdgeInsets.symmetric(horizontal: Get.width * 0.02),
                          //                   child: IconButton(
                          //                       onPressed: (() {
                          //                         Get.back();
                          //                       }),
                          //                       icon: Icon(
                          //                         Icons.keyboard_arrow_down,
                          //                         size: Get.width * 0.07,
                          //                         color: MyConstants.instance.bitterSweet,
                          //                       )),
                          //                 )),
                          //             SizedBox(height: Get.width * 0.015),
                          //             Row(
                          //               children: [
                          //                 Padding(
                          //                   padding: EdgeInsets.symmetric(horizontal: Get.width * 0.03),
                          //                   child: Text(
                          //                     "Ürünler",
                          //                     style: TextStyle(fontSize: Get.width * 0.04),
                          //                   ),
                          //                 ),
                          //                 Spacer(),
                          //                 Text(
                          //                   "10.447,08",
                          //                   style: TextStyle(fontSize: Get.width * 0.04, fontWeight: FontWeight.w500),
                          //                 ),
                          //                 Padding(
                          //                     padding: EdgeInsets.only(right: Get.width * 0.03),
                          //                     child: Icon(
                          //                       Icons.currency_lira,
                          //                       size: Get.width * 0.04,
                          //                     )),
                          //               ],
                          //             ),
                          //             SizedBox(height: Get.width * 0.01),
                          //             Row(
                          //               children: [
                          //                 Padding(
                          //                   padding: EdgeInsets.symmetric(horizontal: Get.width * 0.03),
                          //                   child: Text(
                          //                     "Kargo",
                          //                     style: TextStyle(fontSize: Get.width * 0.04),
                          //                   ),
                          //                 ),
                          //                 Spacer(),
                          //                 Text(
                          //                   "10,00",
                          //                   style: TextStyle(fontSize: Get.width * 0.04, fontWeight: FontWeight.w500),
                          //                 ),
                          //                 Padding(
                          //                     padding: EdgeInsets.only(right: Get.width * 0.03),
                          //                     child: Icon(
                          //                       Icons.currency_lira,
                          //                       size: Get.width * 0.04,
                          //                     )),
                          //               ],
                          //             ),
                          //             SizedBox(height: Get.width * 0.01),
                          //             Row(
                          //               children: [
                          //                 Padding(
                          //                   padding: EdgeInsets.symmetric(horizontal: Get.width * 0.03),
                          //                   child: Text(
                          //                     "İndirim",
                          //                     style: TextStyle(fontSize: Get.width * 0.04),
                          //                   ),
                          //                 ),
                          //                 Spacer(),
                          //                 Text(
                          //                   "0.00",
                          //                   style: TextStyle(fontSize: Get.width * 0.04, fontWeight: FontWeight.w500, color: Colors.green),
                          //                 ),
                          //                 Padding(
                          //                     padding: EdgeInsets.only(right: Get.width * 0.03),
                          //                     child: Icon(
                          //                       Icons.currency_lira,
                          //                       size: Get.width * 0.04,
                          //                       color: Colors.green,
                          //                     )),
                          //               ],
                          //             ),
                          //             SizedBox(height: Get.width * 0.01),
                          //             Row(
                          //               children: [
                          //                 Padding(
                          //                   padding: EdgeInsets.symmetric(horizontal: Get.width * 0.03),
                          //                   child: Text(
                          //                     "Toplam",
                          //                     style: TextStyle(fontSize: Get.width * 0.045),
                          //                   ),
                          //                 ),
                          //                 Spacer(),
                          //                 Text(
                          //                   "10.457,08",
                          //                   style: TextStyle(fontSize: Get.width * 0.045, fontWeight: FontWeight.w700),
                          //                 ),
                          //                 Padding(
                          //                     padding: EdgeInsets.only(right: Get.width * 0.03),
                          //                     child: Icon(
                          //                       Icons.currency_lira,
                          //                       size: Get.width * 0.04,
                          //                     )),
                          //               ],
                          //             )
                          //           ],
                          //         ),
                          //       );
                          //     }));
                        }),
                        icon: Icon(
                          Icons.keyboard_arrow_up_outlined,
                          size: Get.width * 0.07,
                          color: MyConstants.instance.bitterSweet,
                        ))
                  ],
                )),
            SizedBox(
              width: Get.width * 0.5,
              height: Get.width * 0.11,
              child: ElevatedButton(
                  style: ButtonStyle(shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)))),
                  onPressed: (() {}),
                  child: Text(
                    "Alışverişi Tamamla",
                    style: TextStyle(fontSize: Get.width * 0.05, letterSpacing: 0.1),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
