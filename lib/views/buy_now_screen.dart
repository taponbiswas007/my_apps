import 'package:flutter/material.dart';
import 'package:my_apps/utils/all_colors.dart';
import 'package:my_apps/utils/all_font_styles.dart';
import 'package:my_apps/views/home_screen.dart';

class BuyNowPage extends StatefulWidget {
  const BuyNowPage({super.key});

  @override
  State<BuyNowPage> createState() => _BuyNowPageState();
}

class _BuyNowPageState extends State<BuyNowPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 60.0,
            left: 13.0,
            right: 13.0,
            bottom: 20.0
          ),
          child: Column(
            children: [
              Container(
                child: Row(children: [
                  Container(
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        height: 41.0,
                        width: 41.0,
                        decoration: BoxDecoration(
                          color: AllColors.grayColor,
                          borderRadius: BorderRadius.circular(
                              20.5), // 50% of the width/height
                        ),
                        child: Center(
                          child: IconButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage()),
                              );
                            },
                            icon: Icon(Icons.arrow_back),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 100.0),
                          child: Text(
                            "My cart",
                            style: AllStyles.homePagetitleTextstyle,
                          ),
                        ),
                      ),
                    ],
                  )
                ]),
              ),
              SizedBox(
                height: 30.0,
              ),
              SingleChildScrollView(
                child: Container(
                  height: 115.0,
                  decoration: BoxDecoration(
                      color: AllColors.buyProductBg,
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Row(
                      children: [
                        Container(
                            height: 87.0,
                            width: 115.0,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(123, 180, 198, 214),
                                borderRadius: BorderRadius.circular(10.0)),
                            child: Image.asset("assets/images/apple-watch.png",
                                width: 85.0, height: 89.0)),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 12.0, top: 12.0, right: 12.0),
                            child: Container(
                              child: Column(
                                children: [
                                  Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          child: Text(
                                            "Apple W-series 6",
                                            style: AllStyles.cadheaderTextstyle,
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            "Size: 35",
                                            style: AllStyles.itemsizeTextstyle,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          child: Text(
                                            "Tk. 45,000",
                                            style: AllStyles.activePriceTextstyle,
                                          ),
                                        ),
                                        Container(
                                          height: 35.0,
                                          width: 67.0,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: const Color.fromARGB(
                                                      137, 31, 65, 187),
                                                  width: 1.0),
                                              borderRadius:
                                                  BorderRadius.circular(10.0)),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              
                                               Container(
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                    children: [
                                                      Icon(Icons.minimize, color: AllColors.blueColor, size: 20.0,),
                                                    ],
                                                  ),
                                                ),
                                              
                                              Container(
                                                child: Text("1", style: TextStyle(
                                                  color: AllColors.blueColor
                                                ),),
                                              ),
                                              Container(
                                                child: Icon(Icons.add, color: AllColors.blueColor, size: 20.0,),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Container(
                height: 115.0,
                decoration: BoxDecoration(
                    color: AllColors.buyProductBg,
                    borderRadius: BorderRadius.circular(10.0)),
                child: Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Row(
                    children: [
                      Container(
                          height: 87.0,
                          width: 115.0,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(123, 180, 198, 214),
                              borderRadius: BorderRadius.circular(10.0)),
                          child: Image.asset("assets/images/earphone.png",
                              width: 85.0, height: 89.0)),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 12.0, top: 12.0, right: 12.0),
                          child: Container(
                            child: Column(
                              children: [
                                Container(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        child: Text(
                                          "Apple W-series 6",
                                          style: AllStyles.cadheaderTextstyle,
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          "Size: M",
                                          style: AllStyles.itemsizeTextstyle,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Container(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Text(
                                          "Tk. 45,000",
                                          style: AllStyles.activePriceTextstyle,
                                        ),
                                      ),
                                      Container(
                                        height: 35.0,
                                        width: 67.0,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: const Color.fromARGB(
                                                    137, 31, 65, 187),
                                                width: 1.0),
                                            borderRadius:
                                                BorderRadius.circular(10.0)),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            
                                             Container(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  children: [
                                                    Icon(Icons.minimize, color: AllColors.blueColor, size: 20.0,),
                                                  ],
                                                ),
                                              ),
                                            
                                            Container(
                                              child: Text("1", style: TextStyle(
                                                color: AllColors.blueColor
                                              ),),
                                            ),
                                            Container(
                                              child: Icon(Icons.add, color: AllColors.blueColor, size: 20.0,),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Container(
                height: 115.0,
                decoration: BoxDecoration(
                    color: AllColors.buyProductBg,
                    borderRadius: BorderRadius.circular(10.0)),
                child: Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Row(
                    children: [
                      Container(
                          height: 87.0,
                          width: 115.0,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(123, 180, 198, 214),
                              borderRadius: BorderRadius.circular(10.0)),
                          child: Image.asset("assets/images/shart.png",
                              width: 85.0, height: 89.0)),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 12.0, top: 12.0, right: 12.0),
                          child: Container(
                            child: Column(
                              children: [
                                Container(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        child: Text(
                                          "Apple W-series 6",
                                          style: AllStyles.cadheaderTextstyle,
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          "Size: 5",
                                          style: AllStyles.itemsizeTextstyle,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Container(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Text(
                                          "Tk. 45,000",
                                          style: AllStyles.activePriceTextstyle,
                                        ),
                                      ),
                                      Container(
                                        height: 35.0,
                                        width: 67.0,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: const Color.fromARGB(
                                                    137, 31, 65, 187),
                                                width: 1.0),
                                            borderRadius:
                                                BorderRadius.circular(10.0)),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            
                                             Container(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  children: [
                                                    Icon(Icons.minimize, color: AllColors.blueColor, size: 20.0,),
                                                  ],
                                                ),
                                              ),
                                            
                                            Container(
                                              child: Text("1", style: TextStyle(
                                                color: AllColors.blueColor
                                              ),),
                                            ),
                                            Container(
                                              child: Icon(Icons.add, color: AllColors.blueColor, size: 20.0,),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Container(
                height: 115.0,
                decoration: BoxDecoration(
                    color: AllColors.buyProductBg,
                    borderRadius: BorderRadius.circular(10.0)),
                child: Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Row(
                    children: [
                      Container(
                          height: 87.0,
                          width: 115.0,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(123, 180, 198, 214),
                              borderRadius: BorderRadius.circular(10.0)),
                          child: Image.asset("assets/images/doubleshoues.png",
                              width: 85.0, height: 89.0)),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 12.0, top: 12.0, right: 12.0),
                          child: Container(
                            child: Column(
                              children: [
                                Container(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        child: Text(
                                          "Apple W-series 6",
                                          style: AllStyles.cadheaderTextstyle,
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          "Size: 42",
                                          style: AllStyles.itemsizeTextstyle,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Container(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Text(
                                          "Tk. 45,000",
                                          style: AllStyles.activePriceTextstyle,
                                        ),
                                      ),
                                      Container(
                                        height: 35.0,
                                        width: 67.0,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: const Color.fromARGB(
                                                    137, 31, 65, 187),
                                                width: 1.0),
                                            borderRadius:
                                                BorderRadius.circular(10.0)),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            
                                             Container(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  children: [
                                                    Icon(Icons.minimize, color: AllColors.blueColor, size: 20.0,),
                                                  ],
                                                ),
                                              ),
                                            
                                            Container(
                                              child: Text("1", style: TextStyle(
                                                color: AllColors.blueColor
                                              ),),
                                            ),
                                            Container(
                                              child: Icon(Icons.add, color: AllColors.blueColor, size: 20.0,),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 60.0,),
              Padding(
                padding: const EdgeInsets.only(left: 50.0, right: 30.0),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Text("Total", style: AllStyles.homePagetitleTextstyle,),
                      ),
                      Container(
                        child: Text("Tk. 180000", style: AllStyles.totalAmountTextstyle,),
                      ),
                    ],
                  ),
                ),
              ),
                SizedBox(
                height: 30.0,
              ),
              Container(
                width: double.infinity,
                height: 60.0,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
                  child: Text(
                    "Buy Now",
                    style: AllStyles.signInsignUpTextstyle,
                  ),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(AllColors.blueColor),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0))),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
