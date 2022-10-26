import 'package:dorilla/constants/myconstants.dart';
import 'package:dorilla/widgets/categ_female.dart';
import 'package:dorilla/widgets/categ_male.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:toggle_switch/toggle_switch.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: ToggleSwitch(
            minWidth: 150,
            fontSize: Get.width * 0.04,
            activeBgColor: const [Colors.white],
            activeFgColor: Colors.black,
            inactiveBgColor: Colors.white,
            inactiveFgColor: Colors.black26,
            initialLabelIndex: _selectedIndex,
            labels: const ['Male', 'Female'],
            onToggle: (index) {
              setState(() {
                _selectedIndex = index!;
              });
            },
          ),
        ),
      ),
      body: _selectedIndex == 0 ? const CatMAle() : const CatFeMAle(),
    );
  }
}
