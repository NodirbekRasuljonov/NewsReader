import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:newsreader/core/constants/colorconstants.dart';
import 'package:newsreader/core/constants/myfonts.dart';
import 'package:newsreader/core/constants/myradius.dart';
import 'package:on_click/on_click.dart';

class PasswordPage extends StatefulWidget {
  const PasswordPage({Key? key}) : super(key: key);

  @override
  State<PasswordPage> createState() => _PasswordPageState();
}

class _PasswordPageState extends State<PasswordPage> {
  bool istapped = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: Icon(
          Icons.chevron_left,
          color: SignUpPageColor.iconColor,
        ).onClick(
          () {
            Navigator.pushNamed(context, '/signup');
          },
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        color: Colors.white,
        child: Stack(
          children: [
            Positioned(
              top: MediaQuery.of(context).size.height * 0.075,
              left: MediaQuery.of(context).size.height * 0.15,
              right: MediaQuery.of(context).size.height * 0.15,
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.165,
                width: MediaQuery.of(context).size.height * 0.100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/svg/newsLogo.svg'),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 5.0),
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
              ),
            ),
            Positioned(
              left: MediaQuery.of(context).size.height * 0.040,
              right: MediaQuery.of(context).size.height * 0.040,
              top: MediaQuery.of(context).size.height * 0.280,
              child: Text(
                'Enter your email to be sent a reset password link',
                style: TextStyle(color: SignUpPageColor.iconColor),
                textAlign: TextAlign.center,
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.340,
              left: 40.0,
              right: 40.0,
              child: TextFormField(
                onTap: () {
                  istapped = !istapped;
                  setState(() {});
                },
                cursorColor: SignUpPageColor.textformfieldcolor,
                style: TextStyle(color: SignUpPageColor.iconColor),
                decoration: InputDecoration(
                    hintText: 'Email',
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: SignUpPageColor.textformfieldcolor))),
              ),
            ),
            Positioned(
                left: MediaQuery.of(context).size.height * 0.140,
                right: MediaQuery.of(context).size.height * 0.140,
                top: MediaQuery.of(context).size.height * 0.450,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.070,
                  width: MediaQuery.of(context).size.height * 0.10,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(MyRadius.medium),
                    color: istapped
                        ? SignUpPageColor.iconColor
                        : SignUpPageColor.containercolor,
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    'Reset',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w500),
                  ),
                ).onClick(() async {
                  istapped ? massage() : Container();
                  await Future.delayed(const Duration(seconds: 3)).then(
                      (value) =>
                          Navigator.pushReplacementNamed(context, '/signup'));
                })),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.55,
              left: MediaQuery.of(context).size.height * 0.11,
              right: MediaQuery.of(context).size.height * 0.11,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text("Don't recieve an email?"),
                  const Text(
                    'Re-send',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ).onClick(() {
                    Navigator.pushReplacementNamed(context, '/password');
                  })
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  massage() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            alignment: Alignment.bottomCenter,
            contentPadding: const EdgeInsets.all(10.0),
            backgroundColor: Colors.black,
            titlePadding: const EdgeInsets.all(20.0),
            titleTextStyle: const TextStyle(
              color: Colors.white,
            ),
            title: const Text(
              'Email sent. Please check your email to reset password',
            ),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(MyRadius.medium)),
          );
        });
  }
}
