import 'package:carousel_slider/carousel_slider.dart';
import 'package:dorilla/constants/myconstants.dart';
import 'package:dorilla/pages/comment_page.dart';
import 'package:dorilla/screens/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({Key? key}) : super(key: key);

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SafeArea(
          child: CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [SliverToBoxAdapter(child: ProductImages()), ProductInfo()],
          ),
        ),
        bottomNavigationBar: ProductInfoNavBar());
  }
}

class ProductInfoNavBar extends StatefulWidget {
  const ProductInfoNavBar({Key? key}) : super(key: key);

  @override
  State<ProductInfoNavBar> createState() => _ProductInfoNavBarState();
}

class _ProductInfoNavBarState extends State<ProductInfoNavBar> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.width * 0.20,
      child: Row(
        children: [
          SizedBox(
            width: Get.width * 0.05,
          ),
          SizedBox(
              height: Get.width * 0.1,
              width: Get.width * 0.39,
              child: Row(
                children: [
                  Row(
                    children: [
                      Text(
                        "10.457,08 ",
                        style: TextStyle(fontSize: Get.width * 0.045, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "TL",
                        style: TextStyle(fontSize: Get.width * 0.03, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              )),
          SizedBox(
            width: Get.width * 0.5,
            height: Get.width * 0.11,
            child: ElevatedButton(
                style: ButtonStyle(shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)))),
                onPressed: (() {}),
                child: Text(
                  "Sepete Ekle",
                  style: TextStyle(fontSize: Get.width * 0.05, letterSpacing: 0.1),
                )),
          ),
        ],
      ),
    );
  }
}

class ProductInfo extends StatefulWidget {
  const ProductInfo({Key? key}) : super(key: key);

  @override
  State<ProductInfo> createState() => _ProductInfoState();
}

class _ProductInfoState extends State<ProductInfo> {
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(right: Get.width * 0.05, left: Get.width * 0.05, top: Get.width * 0.04, bottom: Get.width * 0.02),
                child: Text(
                  "Nike Air Jordon 1 Low Bulls Erkek Spor Ayakkabı",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: Get.width * 0.045),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    width: Get.width * 0.05,
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
                  TextButton(
                      onPressed: (() {
                        Get.to(const CommentPage());
                      }),
                      child: Text(" Tüm değerlendirmeleri gör (312)", style: TextStyle(fontSize: Get.width * 0.03, color: Colors.black))),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // SizedBox(
                  //   width: Get.width * 0.05,
                  // ),
                  FloatingActionButton(
                    heroTag: "num1",
                    elevation: 3,
                    backgroundColor: Colors.white,
                    onPressed: (() {}),
                    child: Text(
                      "40",
                      style: TextStyle(fontSize: Get.width * 0.04, fontWeight: FontWeight.w500, color: MyConstants.instance.bitterSweet),
                    ),
                  ),
                  SizedBox(
                    width: Get.width * 0.02,
                  ),
                  FloatingActionButton(
                    heroTag: "num2",
                    elevation: 3,
                    backgroundColor: Colors.white,
                    onPressed: (() {}),
                    child: Text(
                      "41",
                      style: TextStyle(fontSize: Get.width * 0.04, fontWeight: FontWeight.w500, color: MyConstants.instance.bitterSweet),
                    ),
                  ),
                  SizedBox(
                    width: Get.width * 0.02,
                  ),
                  FloatingActionButton(
                    heroTag: "num3",
                    elevation: 3,
                    backgroundColor: Colors.white,
                    onPressed: (() {}),
                    child: Text(
                      "42",
                      style: TextStyle(fontSize: Get.width * 0.04, fontWeight: FontWeight.w500, color: MyConstants.instance.bitterSweet),
                    ),
                  ),
                  SizedBox(
                    width: Get.width * 0.02,
                  ),
                  FloatingActionButton(
                    heroTag: "num4",
                    elevation: 3,
                    backgroundColor: Colors.white,
                    onPressed: (() {}),
                    child: Text(
                      "43",
                      style: TextStyle(fontSize: Get.width * 0.04, fontWeight: FontWeight.w500, color: MyConstants.instance.bitterSweet),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: Get.width * 0.04,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: Get.width * 0.05),
                child: Text(
                  "Her zaman moda, her zaman yeni. Air Jordan 1 Low, Jordan'ın tarihini ve mirasını sergilerken gün boyu rahat etmeni sağlayan bir stildir. Üst düzey malzemelerden üretilen ve topuğunda kapalı Air birimi bulunan bu ikonik profilin renklerini sen seç.",
                  style: TextStyle(fontSize: Get.width * 0.035),
                ),
              ),
              SizedBox(
                height: Get.width * 0.02,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: Get.width * 0.05),
                child: Text(
                  "Yüksek Kaliteli Malzemeler",
                  style: TextStyle(fontSize: Get.width * 0.035, fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: Get.width * 0.05),
                child: Text(
                  "Bu Low modelin üst kısmı, kaliteli deri ve sentetik malzeme kombinasyonundan üretilmiştir.",
                  style: TextStyle(fontSize: Get.width * 0.035),
                ),
              ),
              SizedBox(
                height: Get.width * 0.02,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: Get.width * 0.05),
                child: Text(
                  "Ürün Ayrıntıları",
                  style: TextStyle(fontSize: Get.width * 0.035, fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: Get.width * 0.05),
                child: Text(
                  "• Topukta Wings logosu bulunur\n• Dikişli Swoosh tasarımı\n• Burun kısmı deliklidir\n• Köpük orta tabanKauçuk, tutuş sunar\n• Gösterilen Renk: Beyaz/Siyah/Sail/Gym Red\n• Stil: DC0774-160\n• Menşe Ülke/Bölge: Vietnam",
                  style: TextStyle(fontSize: Get.width * 0.035),
                ),
              ),
            ],
          );

          // Container(
          //   alignment: Alignment.center,
          //   color: Colors.blue,
          //   height: 500,
          //   child: Text('Item:\nItem:\nItem:\nItem:\nItem:\nItem:\nItem:\nItem:\n'),
          // );
        },
        childCount: 1,
      ),
    );
  }
}

class ProductImages extends StatefulWidget {
  const ProductImages({super.key});
  @override
  State<ProductImages> createState() => _ProductImagesState();
}

class _ProductImagesState extends State<ProductImages> {
  final urlImages = [
    "https://i.pinimg.com/originals/84/fd/9e/84fd9eda12f7d871dfd5a25c8f43e8de.jpg",
    "https://kenlu.net/wp-content/uploads/2016/10/14733309_1667605013569586_7054274726146867200_n.jpg",
    "https://productimages.hepsiburada.net/s/245/1500/110000232203263.jpg",
    "https://cdn.media.amplience.net/i/hibbett/aj1-heritage3",
    "https://productimages.hepsiburada.net/s/245/1500/110000232203264.jpg",
    "https://productimages.hepsiburada.net/s/245/1500/110000232203265.jpg",
    "https://productimages.hepsiburada.net/s/245/500/110000232203266.jpg",
  ];

  int activeIndex = 0;
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider.builder(
            itemCount: urlImages.length,
            itemBuilder: ((context, index, realIndex) {
              return Image.network(
                urlImages[index],
                height: 500,
                width: 500,
                fit: BoxFit.fitWidth,
              );
            }),
            options: CarouselOptions(
              aspectRatio: 1 / 1.2,
              viewportFraction: 1,
              onPageChanged: (index, reason) {
                setState(() {
                  activeIndex = index;
                });
              },
              autoPlay: true,
            )),
        Positioned(
          top: 10,
          left: 10,
          child: IconButton(
              onPressed: (() {
                Get.back();
              }),
              icon: Icon(
                Icons.arrow_back_outlined,
                size: Get.width * 0.07,
                color: MyConstants.instance.bitterSweet,
              )),
        ),
        Positioned(
          top: 10,
          right: 10,
          child: IconButton(
              onPressed: (() {}),
              icon: Icon(
                Icons.favorite_border,
                size: Get.width * 0.07,
                color: MyConstants.instance.bitterSweet,
              )),
        ),
        Positioned(
          bottom: Get.height * 0.04,
          width: Get.width,
          child: Align(
            alignment: Alignment.center,
            child: AnimatedSmoothIndicator(
                activeIndex: activeIndex,
                count: urlImages.length,
                effect: WormEffect(
                    dotWidth: 12,
                    dotHeight: 12,
                    activeDotColor: MyConstants.instance.bitterSweet,
                    dotColor: MyConstants.instance.bitterSweetLight2x)),
          ),
        ),
      ],
    );
  }
}
