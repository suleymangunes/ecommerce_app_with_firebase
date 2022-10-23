import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class FovoritedPage extends StatefulWidget {
  const FovoritedPage({Key? key}) : super(key: key);

  @override
  State<FovoritedPage> createState() => _FovoritedPageState();
}

class _FovoritedPageState extends State<FovoritedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("this is my favorited page")),
    );
  }
}
