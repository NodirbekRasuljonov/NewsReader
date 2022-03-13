import 'package:flutter/material.dart';
import 'package:newsreader/core/constants/colorconstants.dart';
import 'package:newsreader/core/constants/myfonts.dart';
import 'package:newsreader/screens/tabbars/settings.dart';

class ProfilePage extends StatefulWidget {
  bool isdark;
  ProfilePage({Key? key, required this.isdark}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: PageStorageKey('profile'),
      resizeToAvoidBottomInset: false,
      backgroundColor: widget.isdark ? ScaffoldColor.dark : ScaffoldColor.ligth,
      appBar: AppBar(
        leading: InkWell(
          child: Icon(Icons.chevron_left),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        iconTheme: IconThemeData(
            color: widget.isdark
                ? SettingsPageColor.lightcolor
                : SettingsPageColor.textColor),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text(
          'Profile',
          style: TextStyle(
              color: widget.isdark
                  ? SettingsPageColor.lightcolor
                  : SettingsPageColor.textColor),
        ),
        actions: [
          Container(
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              alignment: Alignment.center,
              child: InkWell(
                onTap: () {},
                child: Text(
                  'Save',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: MyFonts.small,
                      fontWeight: FontWeight.w400),
                ),
              ))
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.25,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.person_pin,
                      size: 100,
                      color: widget.isdark
                          ? SettingsPageColor.lightcolor
                          : SettingsPageColor.textColor),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'Change photo',
                      style: TextStyle(
                          color: widget.isdark
                              ? SettingsPageColor.lightcolor
                              : SettingsPageColor.textColor),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
                child: Container(
              height: 200.0,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.06,
                    width: double.infinity,
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 5.0),
                          alignment: Alignment.bottomCenter,
                          height: MediaQuery.of(context).size.height * 0.06,
                          width: MediaQuery.of(context).size.height * 0.12,
                          child: Text(
                            'Username',
                            style: TextStyle(
                                color: widget.isdark
                                    ? SettingsPageColor.lightcolor
                                    : SettingsPageColor.textColor,
                                fontWeight: FontWeight.bold,
                                fontSize: MyFonts.small),
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.symmetric(horizontal: 5.0),
                            height: MediaQuery.of(context).size.height * 0.050,
                            width: MediaQuery.of(context).size.height * 0.33,
                            alignment: Alignment.center,
                            child: TextFormField(
                                cursorColor: widget.isdark
                                    ? SettingsPageColor.lightcolor
                                    : SettingsPageColor.textColor,
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    color: widget.isdark
                                        ? SettingsPageColor.lightcolor
                                        : SettingsPageColor.textColor),
                                decoration: InputDecoration(
                                    focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: widget.isdark
                                                ? SettingsPageColor.lightcolor
                                                : SettingsPageColor.textColor)),
                                    border: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: widget.isdark
                                                ? SettingsPageColor.lightcolor
                                                : SettingsPageColor
                                                    .textColor)))))
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.1,
                    width: double.infinity,
                    alignment: Alignment.bottomLeft,
                    margin: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      'List Accounts',
                      style: TextStyle(
                          color: widget.isdark
                              ? SettingsPageColor.lightcolor
                              : SettingsPageColor.textColor,
                          fontSize: MyFonts.small,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Card(
                    color: widget.isdark
                        ? ScaffoldColor.dark
                        : ScaffoldColor.ligth,
                    elevation: 1.0,
                    child: ListTile(
                      leading: Icon(Icons.facebook,
                          color: widget.isdark
                              ? SettingsPageColor.lightcolor
                              : SettingsPageColor.textColor),
                      title: Text(
                        'Facebook',
                        style: TextStyle(
                            color: widget.isdark
                                ? SettingsPageColor.lightcolor
                                : SettingsPageColor.textColor),
                      ),
                      trailing: Icon(
                        Icons.chevron_right,
                        color: SettingsPageColor.trailingcolor,
                      ),
                    ),
                  ),
                  Card(
                    color: widget.isdark
                        ? ScaffoldColor.dark
                        : ScaffoldColor.ligth,
                    elevation: 1.0,
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: widget.isdark
                            ? SettingsPageColor.lightcolor
                            : SettingsPageColor.lightcolor,
                        radius: 12.0,
                        backgroundImage:
                            AssetImage('assets/png/twitter (1).png'),
                      ),
                      title: Text(
                        'Twitter',
                        style: TextStyle(
                            color: widget.isdark
                                ? SettingsPageColor.lightcolor
                                : SettingsPageColor.textColor),
                      ),
                      trailing: Icon(
                        Icons.chevron_right,
                        color: SettingsPageColor.trailingcolor,
                      ),
                    ),
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
