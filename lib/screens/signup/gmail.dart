import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:newsreader/core/constants/colorconstants.dart';
import 'package:newsreader/core/constants/iconsize.dart';
import 'package:newsreader/core/constants/myfonts.dart';
import 'package:newsreader/core/constants/myradius.dart';
import 'package:newsreader/main.dart';
import 'package:newsreader/screens/tabbars/settings.dart';
import 'package:on_click/extensions/click_extension.dart';

class GmailPage extends StatefulWidget {
  const GmailPage({Key? key}) : super(key: key);

  @override
  State<GmailPage> createState() => _GmailPageState();
}

class _GmailPageState extends State<GmailPage> {
  bool _isSecure = true;
  bool iconcolor = true;
  final _formkey = GlobalKey<FormState>();

  final TextEditingController _usernamcontroller = TextEditingController();
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                )),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.250,
              left: MediaQuery.of(context).size.height * 0.046,
              right: MediaQuery.of(context).size.height * 0.046,
              child: Container(
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height * 0.304,
                child: Form(
                  key: _formkey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.088,
                        child: TextFormField(
                          style: TextStyle(
                              color: SignUpPageColor.textformfieldcolor),
                          decoration: InputDecoration(
                              hintText: 'Username',
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color:
                                          SignUpPageColor.textformfieldcolor)),
                              border: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color:
                                          SignUpPageColor.textformfieldcolor))),
                          cursorColor: SignUpPageColor.textformfieldcolor,
                          controller: _usernamcontroller,
                        ),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.088,
                          child: TextFormField(
                            style: TextStyle(
                                color: SignUpPageColor.textformfieldcolor),
                            decoration: InputDecoration(
                                hintText: 'Email',
                                focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: SignUpPageColor
                                            .textformfieldcolor)),
                                border: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: SignUpPageColor
                                            .textformfieldcolor))),
                            cursorColor: SignUpPageColor.textformfieldcolor,
                            controller: _emailcontroller,
                            validator: (text) {
                              if (text!.length < 5) {
                                return 'Email notogri';
                              }
                              return null;
                            },
                          )),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.088,
                        child: TextFormField(
                          obscureText: _isSecure,
                          style: TextStyle(
                              color: SignUpPageColor.textformfieldcolor),
                          decoration: InputDecoration(
                              suffixIcon: IconButton(
                                  color: SignUpPageColor.textformfieldcolor,
                                  onPressed: () {
                                    _isSecure = !_isSecure;
                                    setState(() {});
                                  },
                                  icon: _isSecure
                                      ? const Icon(Icons.visibility_off)
                                      : const Icon(Icons.visibility)),
                              hintText: 'Password',
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color:
                                          SignUpPageColor.textformfieldcolor)),
                              border: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color:
                                          SignUpPageColor.textformfieldcolor))),
                          cursorColor: SignUpPageColor.textformfieldcolor,
                          controller: _passwordcontroller,
                          validator: (text) {
                            if (text!.length < 5) {
                              return 'Password must be at least 8 characters';
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
                left: MediaQuery.of(context).size.height * 0.355,
                top: MediaQuery.of(context).size.height * 0.52,
                child: Text(
                  'Forget password',
                  style: TextStyle(
                      color: SignUpPageColor.iconColor,
                      fontWeight: FontWeight.bold),
                ).onClick(() {
                  Navigator.pushNamed(context, '/password');
                })),
            Positioned(
                top: MediaQuery.of(context).size.height * 0.6,
                left: MediaQuery.of(context).size.height * 0.12,
                right: MediaQuery.of(context).size.height * 0.12,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.08,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(MyRadius.medium),
                      color: SignUpPageColor.iconColor),
                  alignment: Alignment.center,
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: MyFonts.medium),
                  ),
                ).onClick(() {
                  Navigator.pushNamed(context, '/homepage');
                })),
            Positioned(
              bottom: 136.0,
              left: MediaQuery.of(context).size.height * 0.01,
              right: MediaQuery.of(context).size.height * 0.01,
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.075,
                width: 300,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      loginOptions(context,
                          iconData: Text(
                            'G',
                            style: TextStyle(
                                color: SignUpPageColor.iconColor,
                                fontSize: MyIconSize.large),
                          ),
                          route: 'sad'),
                      loginOptions(context,
                          iconData: Text(
                            'f',
                            style: TextStyle(
                                color: SignUpPageColor.iconColor,
                                fontSize: MyIconSize.large),
                          ),
                          route: '.asd'),
                      loginOptions(context,
                          iconData: Text(
                            't',
                            style: TextStyle(
                                color: SignUpPageColor.iconColor,
                                fontSize: MyIconSize.large),
                          ),
                          route: 'dfds'),
                      loginOptions(context,
                          iconData: Icon(
                            Icons.apple_outlined,
                            color: SignUpPageColor.iconColor,
                            size: MyIconSize.large,
                          ),
                          route: 'dsas'),
                    ]),
              ),
            ),
            Positioned(
                bottom: 50,
                left: 30.0,
                right: 30.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'By singing up to News24 you are accepting out',
                      style: TextStyle(color: SignUpPageColor.iconColor),
                    ),
                    Text(
                      'Terms & Conditions',
                      style: TextStyle(
                          color: SignUpPageColor.iconColor,
                          fontSize: MyFonts.medium,
                          fontWeight: FontWeight.bold),
                    ).onClick(() {
                      Navigator.pushNamed(context, '/terms',
                          arguments: MyApp.isDarkmode);
                    })
                  ],
                ))
          ],
        ),
      ),
    );
  }

  Widget loginOptions(BuildContext context,
      {required Widget iconData, required String route}) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.9,
      width: MediaQuery.of(context).size.height * 0.08,
      alignment: Alignment.center,
      child: iconData,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(MyRadius.extrasmall)),
    ).onClick(() {
      Navigator.pushNamed(context, route);
    });
  }
}
