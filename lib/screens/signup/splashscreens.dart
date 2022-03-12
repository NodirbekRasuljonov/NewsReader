import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:newsreader/core/constants/colorconstants.dart';
import 'package:newsreader/core/constants/myfonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/signup');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: SplashScreenColor.splashscreencolor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset('assets/svg/newsLogo.svg'),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10.0),
            height: 50.0,
            width: 100.0,
            alignment: Alignment.center,
            child: Text(
              'News 24',
              style: TextStyle(
                  color: SplashScreenColor.textcolor,
                  fontSize: MyFonts.medium,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none),
            ),
          )
        ],
      ),
    );
  }
}
