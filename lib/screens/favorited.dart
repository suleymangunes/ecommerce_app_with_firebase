import 'package:flutter/material.dart';

class FovoritedPage extends StatefulWidget {
  const FovoritedPage({Key? key}) : super(key: key);

  @override
  State<FovoritedPage> createState() => _FovoritedPageState();
}

class _FovoritedPageState extends State<FovoritedPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("this is my favorited page")),
    );
  }
}
