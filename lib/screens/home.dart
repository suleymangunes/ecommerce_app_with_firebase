import 'package:carousel_slider/carousel_slider.dart';
import 'package:dorilla/constants/myconstants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../pages/search_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: Get.height * 0.08,
        backgroundColor: Colors.white,
        leading: Container(
          padding: EdgeInsets.only(left: Get.height * 0.01, top: Get.width * 0.02),
          // margin: EdgeInsets.all(Get.width * 0.01),
          child: Image.asset(
            "assets/dorilla_logo_without_pad.png",
          ),
        ),
        title: Align(
          alignment: Alignment.center,
          child: ElevatedButton(
              style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(Size(Get.width * 0.75, Get.height * 0.06)),
                  elevation: MaterialStateProperty.all(3),
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)))),
              onPressed: (() {
                Get.to(
                  const SearchPage(),
                  transition: Transition.fade,
                );
              }),
              child: Row(
                children: [
                  const Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: Get.width * 0.01),
                    child: const Text(
                      "Search something...",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ],
              )),
        ),
        // actions: [
        //   Padding(
        //       padding: EdgeInsets.only(right: Get.height * 0.02, top: Get.height * 0.01),
        //       child: Icon(
        //         Icons.shopping_cart_outlined,
        //         size: Get.width * 0.08,
        //         color: Colors.red,
        //       ))
        // ],
      ),
      body: const CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [SliverToBoxAdapter(child: HomeBody()), MySilverGrid()],
      ),
    );
  }
}

class MySilverGrid extends StatefulWidget {
  const MySilverGrid({Key? key}) : super(key: key);

  @override
  State<MySilverGrid> createState() => _MySilverGridState();
}

class _MySilverGridState extends State<MySilverGrid> {
  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: Get.width * 0.5, mainAxisSpacing: 0.0, crossAxisSpacing: 0.0, childAspectRatio: 0.56),
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Card(
              elevation: 3,
              margin: EdgeInsets.all(Get.width * 0.03),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                      height: Get.width * 0.4,
                      width: Get.width * 0.4,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: Get.width * 0.02),
                        child: Image.network(
                          "https://productimages.hepsiburada.net/s/245/600-800/110000232203263.jpg/format:webp",
                          fit: BoxFit.cover,
                        ),
                      )),
                  SizedBox(
                    height: Get.width * 0.11,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: Get.width * 0.02),
                      child: Text(
                        "Nike Air Jordon 1 Low Bulls Erkek Spor Ayakkabı",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        softWrap: true,
                        style: TextStyle(fontSize: Get.width * 0.035),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: Get.width * 0.015,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: Get.width * 0.04,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: Get.width * 0.04,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: Get.width * 0.04,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: Get.width * 0.04,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: Get.width * 0.04,
                      ),
                      Text(" (312)", style: TextStyle(fontSize: Get.width * 0.03)),
                    ],
                  ),
                  SizedBox(
                    height: Get.width * 0.15,
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: Get.width * 0.02),
                          child: Text("4.325,09 ", style: TextStyle(fontSize: Get.width * 0.04, fontWeight: FontWeight.bold)),
                        ),
                        Text("TL", style: TextStyle(fontSize: Get.width * 0.03, fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: Get.width * 0.4,
                      height: Get.width * 0.08,
                      child: ElevatedButton(
                        // style: ButtonStyle(shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)))),
                        onPressed: (() {}),
                        child: const Text("Sepete Ekle"),
                      ),
                    ),
                  )
                ],
              ));
        },
        childCount: 200,
      ),
    );
  }
}

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  final urlImages = [
    "https://images.hepsiburada.net/banners/s/0/1344-756/bannerImage2132_20221021164623.png/format:webp",
    "https://images.hepsiburada.net/banners/s/0/1344-756/bannerImage2129_20221021165313.png/format:webp",
    "https://images.hepsiburada.net/banners/s/0/1344-756/bannerImage2086_20221021170814.png/format:webp",
    "https://images.hepsiburada.net/banners/s/0/1344-756/bannerImage2110_20221021171432.png/format:webp",
    "https://images.hepsiburada.net/banners/s/0/1344-756/bannerImage2135_20221021162646.png/format:webp",
  ];

  int activeIndex = 0;
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
            itemCount: urlImages.length,
            itemBuilder: ((context, index, realIndex) {
              return Image.network(urlImages[index]);
            }),
            options: CarouselOptions(
              onPageChanged: (index, reason) {
                setState(() {
                  activeIndex = index;
                });
              },
              autoPlay: true,
              enlargeCenterPage: true,
            )),
        AnimatedSmoothIndicator(
            activeIndex: activeIndex,
            count: urlImages.length,
            effect: WormEffect(dotHeight: 5, activeDotColor: MyConstants.instance.bitterSweet, dotColor: MyConstants.instance.bitterSweetLight2x)),
      ],
    );
  }
}
