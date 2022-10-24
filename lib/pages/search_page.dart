import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Hero(
          tag: "search",
          child: Material(
            type: MaterialType.transparency,
            child: TextFormField(
              autofocus: true,
              style: TextStyle(fontSize: Get.width * 0.05),
              decoration: InputDecoration(
                  labelStyle: TextStyle(fontSize: Get.width * 0.05),
                  suffixIcon: Icon(
                    Icons.search,
                    size: Get.width * 0.07,
                  ),
                  hintText: "Search something...",
                  hintStyle: TextStyle(fontSize: Get.width * 0.05)),
            ),
          ),
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (() {}),
          child: Text("merhaba"),
        ),
      ),
    );
  }
}
