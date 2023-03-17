import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'widgets/widgets.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final statusBarHeightCtrl = Platform.isAndroid
        ? MediaQuery.of(context).padding.top + 20
        : MediaQuery.of(context).padding.top + 20;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/iceland.jpeg"),
                  fit: BoxFit.cover),
            ),
            height: double.infinity,
            width: double.infinity,
          ),
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
                color: Colors.white,
                gradient: LinearGradient(
                    begin: FractionalOffset.topCenter,
                    end: FractionalOffset.bottomCenter,
                    colors: [
                      Color.fromRGBO(0, 0, 0, 0.47),
                      Color.fromRGBO(0, 0, 0, 0.81),
                    ],
                    stops: [
                      0.0,
                      1.0
                    ])),
          ),
          Column(
            children: [
              SizedBox(
                height: statusBarHeightCtrl,
              ),
              Center(
                child: Image.asset("assets/images/app_logo.png"),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 98),
                child: Center(
                    child: Text(
                  "Create an account",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: GoogleFonts.poppins().fontFamily,
                      fontSize: 32,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal),
                )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Center(
                    child: Text(
                  "Sign up today and get started",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: GoogleFonts.poppins().fontFamily,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal),
                )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 62),
                child: AuthProviderButton(
                  text: 'Sign up with email',
                  isIconProvided: false,
                  height: 54,
                  buttonColor: const Color.fromRGBO(37, 86, 178, 1),
                  textColor: Colors.white,
                  actionCallback: () => Get.toNamed('/home'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 11),
                child: AuthProviderButton(
                  text: 'Sign up with Facebook',
                  isIconProvided: false,
                  icon: Icons.facebook_sharp,
                  height: 54,
                  buttonColor: const Color.fromRGBO(66, 88, 146, 1),
                  textColor: Colors.white,
                  actionCallback: () => Get.toNamed('/home'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 11),
                child: AuthProviderButton(
                  text: 'Sign up with Apple',
                  isIconProvided: true,
                  icon: Icons.apple,
                  height: 54,
                  buttonColor: Colors.white,
                  textColor: Colors.black,
                  actionCallback: () => Get.toNamed('/home'),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 36),
                  child: Center(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Already have an account? ',
                            style: TextStyle(
                                fontFamily: GoogleFonts.poppins().fontFamily,
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: const Color.fromRGBO(255, 255, 255, 1)),
                          ),
                          Text('Log in',
                              style: TextStyle(
                                  fontFamily: GoogleFonts.poppins().fontFamily,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color:
                                      const Color.fromRGBO(255, 143, 108, 1)))
                        ]),
                  )),
              Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 60),
                  child: Center(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'By using Wayfarer you agree to the ',
                            style: TextStyle(
                                fontFamily: GoogleFonts.poppins().fontFamily,
                                fontWeight: FontWeight.w500,
                                fontSize: 11,
                                color: const Color.fromRGBO(255, 255, 255, 1)),
                          ),
                          Text('Terms of Use',
                              style: TextStyle(
                                  fontFamily: GoogleFonts.poppins().fontFamily,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 11,
                                  color:
                                      const Color.fromRGBO(255, 143, 108, 1)))
                        ]),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
