import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CatFeMAle extends StatefulWidget {
  const CatFeMAle({Key? key}) : super(key: key);

  @override
  State<CatFeMAle> createState() => _CatFeMAleState();
}

class _CatFeMAleState extends State<CatFeMAle> {
  final cateList = [
    "https://media.istockphoto.com/vectors/red-shoe-flat-icon-pixel-perfect-for-mobile-and-web-vector-id1149626405?k=20&m=1149626405&s=170667a&w=0&h=KpCxgjmmgDXPDG83d2XvtMtcIGiJuQN-840BH-hWKN4=",
    "https://media.istockphoto.com/vectors/pink-tshirt-icon-vector-id694210240?k=20&m=694210240&s=612x612&w=0&h=qw61hel6huTQOQsla-28b4-UEUB-cqPLcY8fqE4uCFY=",
    "https://cdn-icons-png.flaticon.com/512/1785/1785375.png",
    "https://cdn-icons-png.flaticon.com/512/2290/2290546.png",
    "https://cdn-icons-png.flaticon.com/512/343/343394.png",
    "https://icons.veryicon.com/png/o/clothes-accessories/new-in-spring-4/cotton-padded-clothes-5.png",
    "https://cdn-icons-png.flaticon.com/512/5258/5258293.png",
    "https://i.pinimg.com/originals/5f/f3/10/5ff3109afcc9da44a4867018ad228e7a.jpg",
    "https://static.vecteezy.com/system/resources/previews/008/319/393/original/gold-bracelet-color-icon-illustration-vector.jpg",
    "https://cdn1.iconfinder.com/data/icons/clothes-outfit-mono-color-shop-aholic/512/Trouser_women-512.png",
  ];
  final cateNames = ["Shoe", "T-shirt", "Dress", "Skirt", "Sock", "Jacket", "Bag", "Parfume", "Watch", "Pant"];

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
              ));
        }));
  }
}
