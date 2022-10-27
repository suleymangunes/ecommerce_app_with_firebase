import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CatFeMAle extends StatefulWidget {
  const CatFeMAle({Key? key}) : super(key: key);

  @override
  State<CatFeMAle> createState() => _CatFeMAleState();
}

class _CatFeMAleState extends State<CatFeMAle> {
  final cateList = [
    "https://cdn-icons-png.flaticon.com/512/1785/1785348.png",
    "https://cdn3.iconfinder.com/data/icons/clothing-set-4/64/tshirt-other-512.png",
    "https://image.shutterstock.com/image-vector/business-suit-icon-600w-381894436.jpg",
    "https://img.freepik.com/premium-vector/hand-drawn-business-men-s-tie-icon-black-white-doodle-illustration_571637-184.jpg?w=2000",
    "https://image.shutterstock.com/image-illustration/sock-icon-simple-illustration-web-260nw-1081067246.jpg",
    "https://cdn.iconscout.com/icon/premium/png-256-thumb/jacket-147-1119502.png",
    "https://media.istockphoto.com/vectors/cap-icon-on-white-background-vector-id924676466?k=20&m=924676466&s=170667a&w=0&h=75pBKf7EvTXPWUfZkRm8jGZKI3PDB4MSBLUPUbhTuTo=",
    "https://previews.123rf.com/images/mizinatanya/mizinatanya1905/mizinatanya190500003/123201666-bottle-of-male-perfume-icon-symbol-silhouette-isolated-vector-image-.jpg",
    "https://media.istockphoto.com/vectors/watch-icon-vector-illustratio-black-wristwatch-pictogram-symbol-clock-vector-id627993910?k=20&m=627993910&s=170667a&w=0&h=ArnZLS2LBW4Zzjg8rsIuMkceNAXyk_XXRYcjHHdb-fE=",
    "https://cdn-icons-png.flaticon.com/512/88/88823.png",
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
              child: Card(
                // color: Colors.red,
                elevation: 5,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                // color: Colors.red,
                margin: EdgeInsets.all(Get.width * 0.08),
                child: Column(
                  children: [
                    SizedBox(width: Get.width * 0.3, height: Get.width * 0.3, child: Image.network(cateList[index])),
                  ],
                ),
              ));
        }));
  }
}
