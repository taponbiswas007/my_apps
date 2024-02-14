import 'package:flutter/material.dart';
import 'package:my_apps/utils/all_colors.dart';
import 'package:my_apps/utils/all_font_styles.dart';
import 'package:my_apps/utils/all_text.dart';
import 'package:my_apps/views/home_screen.dart';
import 'package:my_apps/views/welcome_screen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailclt = TextEditingController();
  TextEditingController passclt = TextEditingController();
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
                              20.5), // 50% of the width/height
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
                    "Login here",
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
                      AllText.loginScreenSubTitle,
                      style: AllStyles.loginsubtitleTextstyle,
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
                    controller: emailclt,
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
                    controller: passclt,
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
                width: double.infinity,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "Forgot your password?",
                            style: AllStyles.forgotBtnTextstyle,
                          )),
                    ]),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                width: double.infinity,
                height: 60.0,
                child: ElevatedButton(
                  onPressed: () {
                    String uemail = emailclt.text.toString();
                    String upass = passclt.text;
                    print("Email: $uemail , Password: $upass");
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
                  child: Text(
                    "Sign in",
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
                      "Create new account",
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
