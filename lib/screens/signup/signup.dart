import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:newsreader/core/constants/colorconstants.dart';
import 'package:newsreader/core/constants/myfonts.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _isSecure = true;
  bool iconcolor = true;
  final _formkey = GlobalKey<FormState>();

  final TextEditingController _usernamcontroller = TextEditingController();
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                                        color: SignUpPageColor
                                            .textformfieldcolor)),
                                border: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: SignUpPageColor
                                            .textformfieldcolor))),
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
                                          color: SignUpPageColor
                                              .textformfieldcolor)),
                                  border: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: SignUpPageColor
                                              .textformfieldcolor))),
                              cursorColor: SignUpPageColor.textformfieldcolor,
                              controller: _passwordcontroller,
                              validator: (text) {
                                if (text!.length < 5) {
                                  return 'Password must be at least 8 characters';
                                }
                              },
                            )),
                      ],
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

/**
 * if (!snapshot.hasData) {
                          return const Center(
                            child: CircularProgressIndicator.adaptive(),
                          );
                        } else if (snapshot.hasError) {
                          return const Center(
                            child: Text('Please check your Network'),
                          );
                        } else {
                          return ListView.builder(
                            padding: const EdgeInsets.symmetric(vertical: 10.0),
                            itemExtent: 200.0,
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () {},
                                child: Container(
                                  color: Colors.white,
                                  height: MediaQuery.of(context).size.height *
                                      0.150,
                                  width: double.infinity,
                                  margin: const EdgeInsets.symmetric(
                                      vertical: 10.0, horizontal: 10.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.180,
                                        width:
                                            MediaQuery.of(context).size.height *
                                                0.150,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image:
                                                    CachedNetworkImageProvider(
                                                        snapshot
                                                            .data!
                                                            .articles![index]
                                                            .media
                                                            .toString()))),
                                      ),
                                      SizedBox(
                                        height: 180,
                                        width: 240,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              margin:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 5.0),
                                              alignment: Alignment.center,
                                              height: 100,
                                              width: double.infinity,
                                              child: Text(
                                                snapshot.data!.articles![index]
                                                    .title
                                                    .toString(),
                                                style: TextStyle(
                                                    fontSize: MyFonts.small,
                                                    color: HomePageColor
                                                        .textcolor),
                                              ),
                                            ),
                                            Container(
                                                margin:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 5.0),
                                                alignment: Alignment.centerLeft,
                                                height: 30.0,
                                                width: double.infinity,
                                                child: Text(
                                                  snapshot.data!
                                                      .articles![index].author
                                                      .toString(),
                                                  style: TextStyle(
                                                      color: HomePageColor
                                                          .textcolor2),
                                                )),
                                            SizedBox(
                                              height: 30.0,
                                              width: double.infinity,
                                              child: Row(
                                                children: [
                                                  InkWell(
                                                    onTap: () {},
                                                    child: const Padding(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 5.0),
                                                      child:
                                                          Text('Entertainment'),
                                                    ),
                                                  ),
                                                  CircleAvatar(
                                                    radius: 5.0,
                                                    backgroundColor:
                                                        HomePageColor
                                                            .textcolor2,
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        horizontal: 5.0),
                                                    child: Text(
                                                        "${snapshot.data!.articles![index].publishedDate!.minute.toString()} m ago"),
                                                  ),
                                                  const SizedBox(
                                                    width: 15.0,
                                                  ),
                                                  const Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 3.0),
                                                    child: CircleAvatar(
                                                      radius: 1.0,
                                                      backgroundColor:
                                                          Colors.black,
                                                    ),
                                                  ),
                                                  const Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 3.0),
                                                    child: CircleAvatar(
                                                      radius: 1.0,
                                                      backgroundColor:
                                                          Colors.black,
                                                    ),
                                                  ),
                                                  const Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 3.0),
                                                    child: CircleAvatar(
                                                      radius: 1.0,
                                                      backgroundColor:
                                                          Colors.black,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            },
                            itemCount: snapshot.data!.articles!.length,
                          );
 */