import 'package:flutter/material.dart';
import 'package:my_apps/utils/all_colors.dart';
import 'package:my_apps/utils/all_font_styles.dart';
import 'package:my_apps/utils/all_text.dart';
import 'package:my_apps/views/welcome_screen.dart';

class RagistrationPage extends StatefulWidget {
  const RagistrationPage({super.key});

  @override
  State<RagistrationPage> createState() => _RagistrationPageState();
}

class _RagistrationPageState extends State<RagistrationPage> {
  TextEditingController regisemailclt = TextEditingController();
  TextEditingController newpassclt = TextEditingController();
  TextEditingController confirmpassclt = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 80.0, left: 20.0, right: 20.0),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    child: Container(
                        height: 41.0,
                        width: 41.0,
                        decoration: BoxDecoration(
                          color: AllColors.grayColor,
                          borderRadius: BorderRadius.circular(
                              20.5), 
                        ),
                        child: Center(
                            child: IconButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => WelcomeScreen()),
                                  );
                                },
                                icon: Icon(Icons.arrow_back)))),
                  ),
                ],
              ),
              SizedBox(
                height: 60.0,
              ),
              Container(
                child: Center(
                  child: Text(
                    "Create Account",
                    style: AllStyles.loginHeaderTitleStyles,
                  ),
                ),
              ),
              SizedBox(
                height: 26.0,
              ),
              Container(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 80.0, right: 80.0),
                    child: Text(
                      AllText.registerSubTitle,
                      style: AllStyles.registersubtitleTextstyle,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 70.0,
              ),
              Container(
                  decoration: BoxDecoration(
                      color: AllColors.textfillColor,
                      borderRadius: BorderRadius.circular(10.0)),
                  child: TextField(
                    controller: regisemailclt,
                    decoration: InputDecoration(
                        hintText: "Email",
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10.0)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 2.0, color: AllColors.blueColor),
                            borderRadius: BorderRadius.circular(10.0))),
                  )),
              SizedBox(
                height: 29.0,
              ),
              Container(
                  decoration: BoxDecoration(
                      color: AllColors.textfillColor,
                      borderRadius: BorderRadius.circular(10.0)),
                  child: TextField(
                    controller: newpassclt,
                    obscureText: true,
                    obscuringCharacter: '*',
                    decoration: InputDecoration(
                        hintText: "Password",
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10.0)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 2.0, color: AllColors.blueColor),
                            borderRadius: BorderRadius.circular(10.0))),
                  )),
              SizedBox(
                height: 20.0,
              ),
              
              Container(
                  decoration: BoxDecoration(
                      color: AllColors.textfillColor,
                      borderRadius: BorderRadius.circular(10.0)),
                  child: TextField(
                    controller: confirmpassclt,
                    obscureText: true,
                    obscuringCharacter: '*',
                    decoration: InputDecoration(
                        hintText: "Confirm Password",
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10.0)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 2.0, color: AllColors.blueColor),
                            borderRadius: BorderRadius.circular(10.0))),
                  )),
           
              SizedBox(
                height: 20.0,
              ),
              Container(
                width: double.infinity,
                height: 60.0,
                child: ElevatedButton(
                  onPressed: () {
                    String regemail = regisemailclt.text.toString();
                    String newpass = newpassclt.text;
                    String confipass = confirmpassclt.text;
                    print("Email: $regemail , Password: $newpass, Confirm password: $confipass");
                  },
                  child: Text(
                    "Sign up",
                    style: AllStyles.signInsignUpTextstyle,
                  ),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(AllColors.blueColor),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0))),
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Container(
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Already have an account",
                      style: AllStyles.createNewTextstyle,
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
