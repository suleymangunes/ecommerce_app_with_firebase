import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../constants/myconstants.dart';
import '../screens/cart.dart';
import '../screens/categories.dart';
import '../screens/favorited.dart';
import '../screens/home.dart';
import '../screens/profile.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  final screens = [const HomePage(), const CategoriesPage(), const CartPage(), const FovoritedPage(), const ProfilePage()];

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      MyHomePage();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_selectedIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              gap: 4,
              activeColor: MyConstants.instance.bitterSweetDark,
              iconSize: Get.width * 0.06,
              padding: EdgeInsets.symmetric(horizontal: Get.width * 0.02, vertical: Get.width * 0.03),
              duration: const Duration(milliseconds: 400),
              tabBackgroundColor: MyConstants.instance.bitterSweetLight2x,
              color: Colors.black54,
              tabs: const [
                GButton(
                  icon: IconData(0xf107, fontFamily: 'MaterialIcons'),
                  text: 'Home',
                ),
                GButton(
                  icon: IconData(0xef37, fontFamily: 'MaterialIcons'),
                  text: 'Categories',
                ),
                GButton(
                  icon: IconData(0xf37f, fontFamily: 'MaterialIcons'),
                  text: 'Cart',
                ),
                GButton(
                  icon: IconData(0xe25c, fontFamily: 'MaterialIcons'),
                  text: 'Favorites',
                ),
                GButton(
                  icon: IconData(0xe497, fontFamily: 'MaterialIcons'),
                  text: 'Profile',
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
