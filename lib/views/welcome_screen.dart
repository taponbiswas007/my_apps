import 'package:flutter/material.dart';
import 'package:my_apps/utils/all_colors.dart';
import 'package:my_apps/utils/all_font_styles.dart';
import 'package:my_apps/utils/all_text.dart';
import 'package:my_apps/views/login_screen.dart';
import 'package:my_apps/views/registration_screen.dart'; // Ensure correct import

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 50.0,),
              Image.asset("assets/images/welcome-banner-images.png"),
              SizedBox(height: 50.0,),
              Center(
                child: Container(
                  child: Text(
                    AllText.welcomeScreenTitle,
                    style: AllStyles.mainHeaderTitleStyles,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40.0, right: 40.0),
                child: Center(
                  child: Container(
                    child: Text(
                      AllText.welcomeScreenSubTitle,
                      style: AllStyles.mainHeaderwelSubTitleStyles,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 88.0,),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: ElevatedButton(
                          onPressed: () {
                           
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => LoginPage()), 
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AllColors.blueColor,
                            foregroundColor: Colors.white,
                            padding: EdgeInsets.symmetric(horizontal: 52, vertical: 15),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                          child: Text("Login", style: AllStyles.selectButtonTextstyle,),
                        ),
                      ),
                      SizedBox(width: 10.0,),
                      Container(
                        child: TextButton(
                          onPressed: () {
                             Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => RagistrationPage()),
                                  );
                          },
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                          child: Text("Register", style: AllStyles.deselectButtonTextstyle,),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
