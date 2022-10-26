import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CatFeMAle extends StatefulWidget {
  const CatFeMAle({Key? key}) : super(key: key);

  @override
  State<CatFeMAle> createState() => _CatFeMAleState();
}

class _CatFeMAleState extends State<CatFeMAle> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: ((context, index) {
          return GridTile(
              child: Card(
            color: Colors.green,
            margin: EdgeInsets.all(Get.width * 0.04),
            child: Text("ayakkabı"),
          ));
        }));
  }
}
