import 'package:flutter/material.dart';
import 'package:my_apps/utils/all_colors.dart';
import 'package:my_apps/utils/all_font_styles.dart';
import 'package:my_apps/utils/all_text.dart';
import 'package:my_apps/utils/text_styles.dart';
import 'package:my_apps/views/home_screen.dart';

class AddCardScreen extends StatefulWidget {
  const AddCardScreen({super.key});

  @override
  State<AddCardScreen> createState() => _AddCardScreenState();
}

class _AddCardScreenState extends State<AddCardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
              left: 13.0, top: 50.0, right: 13.0, bottom: 20.0),
          child: Column(
            children: [
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
                            MaterialPageRoute(builder: (context) => HomePage()),
                          );
                        },
                        icon: Icon(Icons.arrow_back),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                child: Image.asset(
                  "assets/images/apple-card.png",
                ),
              ),
              Container(
                child: Container(
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          child: Text(
                            "Apple Watch Series 6",
                            style: AllStyles.cardProducnameTextstyle,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        child: Row(children: [
                          Container(
                            child: Icon(
                              Icons.star,
                              color: AllColors.yellowColor,
                            ),
                          ),
                          Container(
                            child: Icon(
                              Icons.star,
                              color: AllColors.yellowColor,
                            ),
                          ),
                          Container(
                            child: Icon(
                              Icons.star,
                              color: AllColors.yellowColor,
                            ),
                          ),
                          Container(
                            child: Icon(
                              Icons.star,
                              color: AllColors.yellowColor,
                            ),
                          ),
                          Container(
                            child: Icon(
                              Icons.star,
                              color: AllColors.yellowColor,
                            ),
                          ),
                        ]),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    child: Text(
                                      "Tk. 45,000",
                                      style: AllStyles.buyProducpriceTextstyle,
                                    ),
                                  ),
                                  SizedBox(width: 5.0),
                                  Container(
                                    child: Text(
                                      "Tk. 55,000",
                                      style: AllStyles.deActivePriceTextstyle
                                          .copyWith(
                                        decoration: TextDecoration.lineThrough,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Text(
                                "Available in stock",
                                style: AllStyles.buyProducpriceTextstyle,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Container(
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("About", style: AllStyles.aboutheaderTextstyle),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                child: Text(
                  AllText.aboutText,
                  style: AllStyles.aboutdetailsTextstyle,
                ),
              ),
              SizedBox(
                height: 27.0,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 43.0,
                      width: 44.0,
                      decoration: BoxDecoration(
                          color: AllColors.pageboxColor,
                          border: Border.all(
                              width: 1.0, color: AllColors.grayblackColor),
                          borderRadius: BorderRadius.circular(7.0)),
                      child: Center(
                        child: Text(
                          "35",
                          style: AllStyles.pageNumberTextstyle,
                        ),
                      ),
                    ),
                    Container(
                      height: 43.0,
                      width: 44.0,
                      decoration: BoxDecoration(
                          color: AllColors.pageboxColor,
                          border: Border.all(
                              width: 1.0, color: AllColors.grayblackColor),
                          borderRadius: BorderRadius.circular(7.0)),
                      child: Center(
                        child: Text(
                          "36",
                          style: AllStyles.pageNumberTextstyle,
                        ),
                      ),
                    ),
                    Container(
                      height: 43.0,
                      width: 44.0,
                      decoration: BoxDecoration(
                          color: AllColors.pageboxColor,
                          border: Border.all(
                              width: 1.0, color: AllColors.grayblackColor),
                          borderRadius: BorderRadius.circular(7.0)),
                      child: Center(
                        child: Text(
                          "37",
                          style: AllStyles.pageNumberTextstyle,
                        ),
                      ),
                    ),
                    Container(
                      height: 43.0,
                      width: 44.0,
                      decoration: BoxDecoration(
                          color: AllColors.blueColor,
                          border: Border.all(
                              width: 1.0, color: AllColors.darkgrayColor),
                          borderRadius: BorderRadius.circular(7.0)),
                      child: Center(
                        child: Text(
                          "38",
                          style: AllStyles.acpageNumberTextstyle,
                          
                        ),
                      ),
                    ),
                    Container(
                      height: 43.0,
                      width: 44.0,
                      decoration: BoxDecoration(
                          color: AllColors.pageboxColor,
                          border: Border.all(
                              width: 1.0, color: AllColors.grayblackColor),
                          borderRadius: BorderRadius.circular(7.0)),
                      child: Center(
                        child: Text(
                          "39",
                          style: AllStyles.pageNumberTextstyle,
                        ),
                      ),
                    ),
                    Container(
                      height: 43.0,
                      width: 44.0,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(124, 219, 219, 219),
                          border: Border.all(
                              width: 1.0, color: AllColors.grayblackColor),
                          borderRadius: BorderRadius.circular(7.0)),
                      child: Center(
                        child: Text(
                          "40",
                          style: AllStyles.pageNumberTextstyle,
                        ),
                      ),
                    ),
                  ],
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
                    "Add to cart",
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
