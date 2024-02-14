import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:my_apps/utils/all_colors.dart';
import 'package:my_apps/utils/all_font_styles.dart';
import 'package:my_apps/utils/all_images.dart';
import 'package:my_apps/views/add_card_screen.dart';
import 'package:my_apps/views/buy_now_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List bannerImagesList = [
    {'id': 1, "image_path": 'assets/images/banner-1.png'},
    {'id': 2, "image_path": 'assets/images/banner-2.png'},
    {'id': 3, "image_path": 'assets/images/banner-3.png'},
  ];
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;
  List<Widget> page = [HomePage(), BuyNowPage()];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: AllColors.blueColor,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        iconSize: 30.0,
        currentIndex: index,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            label: '',
          ),
        ],
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
          if (index == 2) {
            // You can replace this with your navigation logic
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => BuyNowPage()),
            );
          }
        },
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
              top: 80.0, left: 20.0, right: 20.0, bottom: 20.0),
          child: Column(
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 40.0,
                      width: 40.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.5),
                        color: const Color.fromARGB(255, 231, 231, 231),
                      ),
                      child: TextButton(
                        onPressed: () {},
                        child: Image.asset(
                          "assets/images/menu.png",
                        ),
                      ),
                    ),
                    Container(
                      height: 40.0,
                      width: 40.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.5),
                        color: const Color.fromARGB(255, 231, 231, 231),
                      ),
                      child: IconButton(
                          onPressed: () {}, icon: Icon(Icons.search)),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 25.0,
              ),
              //main pages main content area start
              Container(
                child: Row(
                  children: [
                    Container(
                        child: Text(
                      "Hello Fola ",
                      style: AllStyles.homePagetitleTextstyle,
                    )),
                    Container(
                      child: Image.asset("assets/images/hello.png"),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 6.0,
              ),
              Container(
                child: Row(
                  children: [
                    Text(
                      "Let’s start shopping!",
                      style: AllStyles.homePagesubtitleTextstyle,
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
              ),

              //banner area start
              Container(
                child: InkWell(
                  onTap: () {
                    print(currentIndex);
                  },
                  child: CarouselSlider(
                    items: bannerImagesList
                        .map(
                          (item) => Image.asset(
                            item['image_path'],
                          ),
                        )
                        .toList(),
                    carouselController: carouselController,
                    options: CarouselOptions(
                      scrollPhysics: const BouncingScrollPhysics(),
                      autoPlay: true,
                      aspectRatio: 2,
                      viewportFraction: 1.5,
                      onPageChanged: (index, reason) {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                    ),
                  ),
                ),
              ),

              //top catagory area start
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text(
                        "Top Categories",
                        style: AllStyles.topcatagorytitleTextstyle,
                      ),
                    ),
                    Container(
                      child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "See All",
                            style: AllStyles.seeAllTextstyle,
                          )),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 62.0,
                      width: 64.0,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 231, 231, 231),
                        borderRadius: BorderRadius.circular(7.0),
                        border: Border.all(
                          color: Colors.grey,
                          width: 1.0,
                        ),
                      ),
                      child: Image.asset(TopCatagoryImages.catagoryWatch),
                    ),
                    Container(
                      height: 62.0,
                      width: 64.0,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 231, 231, 231),
                        borderRadius: BorderRadius.circular(7.0),
                        border: Border.all(
                          color: Colors.grey,
                          width: 1.0,
                        ),
                      ),
                      child: Image.asset(TopCatagoryImages.catagoryTshart),
                    ),
                    Container(
                      height: 62.0,
                      width: 64.0,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 231, 231, 231),
                        borderRadius: BorderRadius.circular(7.0),
                        border: Border.all(
                          color: Colors.grey,
                          width: 1.0,
                        ),
                      ),
                      child: Image.asset(TopCatagoryImages.catagoryBag),
                    ),
                    Container(
                      height: 62.0,
                      width: 64.0,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 231, 231, 231),
                        borderRadius: BorderRadius.circular(7.0),
                        border: Border.all(
                          color: Colors.grey,
                          width: 1.0,
                        ),
                      ),
                      child: Image.asset(TopCatagoryImages.catagoryShoues),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Expanded(
                            child: Card(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 13.0, top: 5.0, right: 13.0),
                                child: Container(
                                  height: 204.0,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              height: 24.0,
                                              width: 55.0,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20.5),
                                                color: Colors.white,
                                              ),
                                              child: Center(
                                                child: Text(
                                                  "50% OFF",
                                                  style: AllStyles
                                                      .cardDisTextstyle,
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                            ),
                                            Center(
                                              child: Container(
                                                height: 22.0,
                                                width: 22.0,
                                                decoration: BoxDecoration(
                                                  color: AllColors.whiteColor,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20.5),
                                                  border: Border.all(
                                                    width: 1.0,
                                                    color:
                                                        AllColors.darkgrayColor,
                                                  ),
                                                ),
                                                child: Center(
                                                    child: Icon(
                                                  Icons.favorite,
                                                  size: 15.0,
                                                  color:
                                                      AllColors.darkgrayColor,
                                                )),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Image.asset(
                                            "assets/images/Mi-watch.png"),
                                      ),
                                      Container(
                                        child: Align(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            "Redmi Note 4",
                                            style: AllStyles.cadheaderTextstyle,
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10.0,
                                      ),
                                      Container(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              child: Text(
                                                "Tk. 45,000",
                                                style: AllStyles
                                                    .activePriceTextstyle,
                                              ),
                                            ),
                                            Container(
                                              child: Text(
                                                "Tk. 55,000",
                                                style: AllStyles
                                                    .deActivePriceTextstyle
                                                    .copyWith(
                                                  decoration: TextDecoration
                                                      .lineThrough,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => AddCardScreen()),
                                );
                              },
                              child: Card(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 13.0, top: 5.0, right: 13.0),
                                  child: Container(
                                    height: 204.0,
                                    width: 174.0,
                                    child: Column(
                                      children: [
                                        Container(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                height: 24.0,
                                                width: 55.0,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20.5),
                                                  color: Colors.white,
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    "50% OFF",
                                                    style: AllStyles
                                                        .cardDisTextstyle,
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                              ),
                                              Center(
                                                child: Container(
                                                  height: 22.0,
                                                  width: 22.0,
                                                  decoration: BoxDecoration(
                                                    color: AllColors.whiteColor,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20.5),
                                                    border: Border.all(
                                                      width: 1.0,
                                                      color: AllColors
                                                          .darkgrayColor,
                                                    ),
                                                  ),
                                                  child: Center(
                                                      child: Icon(
                                                    Icons.favorite,
                                                    size: 15.0,
                                                    color:
                                                        AllColors.darkgrayColor,
                                                  )),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Container(
                                          child: Image.asset(
                                            "assets/images/apple-watch.png",
                                            height: 100.0,
                                            width: 100.0,
                                          ),
                                        ),
                                        Container(
                                          child: Align(
                                            alignment: Alignment.topLeft,
                                            child: Text(
                                              "Apple Watch - series",
                                              style:
                                                  AllStyles.cadheaderTextstyle,
                                              textAlign: TextAlign.left,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10.0,
                                        ),
                                        Container(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                child: Text(
                                                  "Tk. 45,000",
                                                  style: AllStyles
                                                      .activePriceTextstyle,
                                                ),
                                              ),
                                              Container(
                                                child: Text(
                                                  "Tk. 55,000",
                                                  style: AllStyles
                                                      .deActivePriceTextstyle
                                                      .copyWith(
                                                    decoration: TextDecoration
                                                        .lineThrough,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Expanded(
                            child: Card(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 13.0, top: 5.0, right: 13.0),
                                child: Container(
                                  height: 204.0,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              height: 24.0,
                                              width: 55.0,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20.5),
                                                color: Colors.white,
                                              ),
                                              child: Center(
                                                child: Text(
                                                  "50% OFF",
                                                  style: AllStyles
                                                      .cardDisTextstyle,
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                            ),
                                            Center(
                                              child: Container(
                                                height: 22.0,
                                                width: 22.0,
                                                decoration: BoxDecoration(
                                                  color: AllColors.whiteColor,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20.5),
                                                  border: Border.all(
                                                    width: 1.0,
                                                    color:
                                                        AllColors.darkgrayColor,
                                                  ),
                                                ),
                                                child: Center(
                                                    child: Icon(
                                                  Icons.favorite,
                                                  size: 15.0,
                                                  color:
                                                      AllColors.darkgrayColor,
                                                )),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Image.asset(
                                            "assets/images/cassio-watch.png"),
                                      ),
                                      Container(
                                        child: Align(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            "Redmi Note 4",
                                            style: AllStyles.cadheaderTextstyle,
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10.0,
                                      ),
                                      Container(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              child: Text(
                                                "Tk. 45,000",
                                                style: AllStyles
                                                    .activePriceTextstyle,
                                              ),
                                            ),
                                            Container(
                                              child: Text(
                                                "Tk. 55,000",
                                                style: AllStyles
                                                    .deActivePriceTextstyle
                                                    .copyWith(
                                                  decoration: TextDecoration
                                                      .lineThrough,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Card(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 13.0, top: 5.0, right: 13.0),
                                child: Container(
                                  height: 204.0,
                                  width: 174.0,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              height: 24.0,
                                              width: 55.0,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20.5),
                                                color: Colors.white,
                                              ),
                                              child: Center(
                                                child: Text(
                                                  "50% OFF",
                                                  style: AllStyles
                                                      .cardDisTextstyle,
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                            ),
                                            Center(
                                              child: Container(
                                                height: 22.0,
                                                width: 22.0,
                                                decoration: BoxDecoration(
                                                  color: AllColors.whiteColor,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20.5),
                                                  border: Border.all(
                                                    width: 1.0,
                                                    color:
                                                        AllColors.darkgrayColor,
                                                  ),
                                                ),
                                                child: Center(
                                                    child: Icon(
                                                  Icons.favorite,
                                                  size: 15.0,
                                                  color:
                                                      AllColors.darkgrayColor,
                                                )),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Image.asset(
                                            "assets/images/cassio-watch-two.png"),
                                      ),
                                      Container(
                                        child: Align(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            "Redmi Note 4",
                                            style: AllStyles.cadheaderTextstyle,
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10.0,
                                      ),
                                      Container(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              child: Text(
                                                "Tk. 45,000",
                                                style: AllStyles
                                                    .activePriceTextstyle,
                                              ),
                                            ),
                                            Container(
                                              child: Text(
                                                "Tk. 55,000",
                                                style: AllStyles
                                                    .deActivePriceTextstyle
                                                    .copyWith(
                                                  decoration: TextDecoration
                                                      .lineThrough,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
