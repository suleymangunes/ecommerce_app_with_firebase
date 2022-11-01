import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CatMAle extends StatefulWidget {
  const CatMAle({Key? key}) : super(key: key);

  @override
  State<CatMAle> createState() => _CatMAleState();
}

class _CatMAleState extends State<CatMAle> {
  final cateList = [
    "https://t4.ftcdn.net/jpg/04/60/99/63/360_F_460996349_bIzl423o41oLdi5hJIgNT3OD8SViuo9i.jpg",
    "https://cdn3.iconfinder.com/data/icons/clothing-set-4/64/tshirt-other-512.png",
    "https://cdn-icons-png.flaticon.com/512/988/988839.png",
    "https://cdn-icons-png.flaticon.com/512/217/217894.png",
    "https://freedesignfile.com/upload/2019/12/Socks-icon-vector.jpg",
    "https://static.vecteezy.com/system/resources/thumbnails/003/468/020/small_2x/front-of-basic-white-and-orange-bomber-jacket-isolated-free-vector.jpg",
    "https://cdn-icons-png.flaticon.com/512/892/892420.png",
    "https://thumbs.dreamstime.com/b/perfume-bottles-color-line-icon-fragrance-sign-feminine-cosmetic-product-pictogram-web-page-mobile-app-promo-perfume-bottles-157754474.jpg",
    "https://cdn-icons-png.flaticon.com/512/306/306836.png",
    "https://cdn-icons-png.flaticon.com/512/2290/2290525.png",
  ];
  final cateNames = ["Shoe", "T-shirt", "Suit", "Tie", "Sock", "Jacket", "Cap", "Parfume", "Watch", "Pant"];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 10,
        physics: const BouncingScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: ((context, index) {
          return GridTile(
              footer: Text(
                cateNames[index],
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: Get.width * 0.04),
              ),
              child: InkWell(
                child: Card(
                  // color: Colors.red,
                  elevation: 3,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  // color: Colors.red,
                  margin: EdgeInsets.all(Get.width * 0.08),
                  child: Column(
                    children: [
                      SizedBox(
                          width: Get.width * 0.3,
                          height: Get.width * 0.3,
                          child: Image.network(
                            cateList[index],
                            fit: BoxFit.cover,
                          )),
                    ],
                  ),
                ),
              ));
        }));
  }
}
