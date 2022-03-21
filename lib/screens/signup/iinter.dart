import 'package:flutter/material.dart';
import 'package:newsreader/core/constants/colorconstants.dart';
import 'package:newsreader/core/constants/myradius.dart';
import 'package:on_click/on_click.dart';

class SignInter extends StatefulWidget {
  bool isdark;
  SignInter({Key? key, required this.isdark}) : super(key: key);

  @override
  State<SignInter> createState() => _SignInterState();
}

class _SignInterState extends State<SignInter> {
  bool all = false;
  bool wolrdnews = false;
  bool politics = false;
  bool technology = false;
  bool science = false;
  bool bussines = false;
  bool entertainment = false;
  bool food = false;
  bool istapped = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.isdark ? ScaffoldColor.dark : ScaffoldColor.ligth,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.chevron_left,
            color: widget.isdark
                ? SettingsPageColor.lightcolor
                : SettingsPageColor.textColor,
          ),
        ),
        title: Text(
          'Interests',
          style: TextStyle(
              color: widget.isdark
                  ? SettingsPageColor.lightcolor
                  : SettingsPageColor.textColor),
        ),
      ),
      body: Container(
        key: PageStorageKey('interests'),
        color: widget.isdark ? ScaffoldColor.dark : ScaffoldColor.ligth,
        child: Column(
          children: [
            SwitchListTile.adaptive(
                activeTrackColor: widget.isdark
                    ? ScaffoldColor.ligth
                    : ScaffoldColor.slidercolors,
                inactiveThumbColor:
                    widget.isdark ? ScaffoldColor.dark : ScaffoldColor.ligth,
                activeColor: widget.isdark
                    ? ScaffoldColor.ligth
                    : ScaffoldColor.slidercolors,
                title: Text(
                  'All',
                  style: TextStyle(
                    color: widget.isdark
                        ? SettingsPageColor.lightcolor
                        : SettingsPageColor.textColor,
                  ),
                ),
                value: all,
                onChanged: (bool v) {
                  all = v;
                  wolrdnews = v;
                  politics = v;
                  technology = v;
                  entertainment = v;
                  food = v;
                  science = v;
                  bussines = v;
                  setState(() {});
                }),
            SwitchListTile.adaptive(
                activeTrackColor: widget.isdark
                    ? ScaffoldColor.ligth
                    : ScaffoldColor.slidercolors,
                inactiveThumbColor:
                    widget.isdark ? ScaffoldColor.dark : ScaffoldColor.ligth,
                activeColor: widget.isdark
                    ? ScaffoldColor.ligth
                    : ScaffoldColor.slidercolors,
                title: Text(
                  'Word news',
                  style: TextStyle(
                    color: widget.isdark
                        ? SettingsPageColor.lightcolor
                        : SettingsPageColor.textColor,
                  ),
                ),
                value: wolrdnews,
                onChanged: (bool v) {
                  wolrdnews = v;
                  setState(() {});
                }),
            SwitchListTile.adaptive(
                activeTrackColor: widget.isdark
                    ? ScaffoldColor.ligth
                    : ScaffoldColor.slidercolors,
                inactiveThumbColor:
                    widget.isdark ? ScaffoldColor.dark : ScaffoldColor.ligth,
                activeColor: widget.isdark
                    ? ScaffoldColor.ligth
                    : ScaffoldColor.slidercolors,
                title: Text(
                  'Politics',
                  style: TextStyle(
                    color: widget.isdark
                        ? SettingsPageColor.lightcolor
                        : SettingsPageColor.textColor,
                  ),
                ),
                value: politics,
                onChanged: (bool v) {
                  politics = v;
                  setState(() {});
                }),
            SwitchListTile.adaptive(
                activeTrackColor: widget.isdark
                    ? ScaffoldColor.ligth
                    : ScaffoldColor.slidercolors,
                inactiveThumbColor:
                    widget.isdark ? ScaffoldColor.dark : ScaffoldColor.ligth,
                activeColor: widget.isdark
                    ? ScaffoldColor.ligth
                    : ScaffoldColor.slidercolors,
                title: Text(
                  'Technology',
                  style: TextStyle(
                    color: widget.isdark
                        ? SettingsPageColor.lightcolor
                        : SettingsPageColor.textColor,
                  ),
                ),
                value: technology,
                onChanged: (bool v) {
                  technology = v;
                  setState(() {});
                }),
            SwitchListTile.adaptive(
                activeTrackColor: widget.isdark
                    ? ScaffoldColor.ligth
                    : ScaffoldColor.slidercolors,
                inactiveThumbColor:
                    widget.isdark ? ScaffoldColor.dark : ScaffoldColor.ligth,
                activeColor: widget.isdark
                    ? ScaffoldColor.ligth
                    : ScaffoldColor.slidercolors,
                title: Text(
                  'Science',
                  style: TextStyle(
                    color: widget.isdark
                        ? SettingsPageColor.lightcolor
                        : SettingsPageColor.textColor,
                  ),
                ),
                value: science,
                onChanged: (bool v) {
                  science = v;
                  setState(() {});
                }),
            SwitchListTile.adaptive(
                activeTrackColor: widget.isdark
                    ? ScaffoldColor.ligth
                    : ScaffoldColor.slidercolors,
                inactiveThumbColor:
                    widget.isdark ? ScaffoldColor.dark : ScaffoldColor.ligth,
                activeColor: widget.isdark
                    ? ScaffoldColor.ligth
                    : ScaffoldColor.slidercolors,
                title: Text(
                  'Bussiness',
                  style: TextStyle(
                    color: widget.isdark
                        ? SettingsPageColor.lightcolor
                        : SettingsPageColor.textColor,
                  ),
                ),
                value: bussines,
                onChanged: (bool v) {
                  bussines = v;
                  setState(() {});
                }),
            SwitchListTile.adaptive(
                activeTrackColor: widget.isdark
                    ? ScaffoldColor.ligth
                    : ScaffoldColor.slidercolors,
                inactiveThumbColor:
                    widget.isdark ? ScaffoldColor.dark : ScaffoldColor.ligth,
                activeColor: widget.isdark
                    ? ScaffoldColor.ligth
                    : ScaffoldColor.slidercolors,
                title: Text(
                  'Entertainment',
                  style: TextStyle(
                    color: widget.isdark
                        ? SettingsPageColor.lightcolor
                        : SettingsPageColor.textColor,
                  ),
                ),
                value: entertainment,
                onChanged: (bool v) {
                  entertainment = v;
                  setState(() {});
                }),
            SwitchListTile.adaptive(
                activeTrackColor: widget.isdark
                    ? ScaffoldColor.ligth
                    : ScaffoldColor.slidercolors,
                inactiveThumbColor:
                    widget.isdark ? ScaffoldColor.dark : ScaffoldColor.ligth,
                activeColor: widget.isdark
                    ? ScaffoldColor.ligth
                    : ScaffoldColor.slidercolors,
                title: Text(
                  'Food',
                  style: TextStyle(
                    color: widget.isdark
                        ? SettingsPageColor.lightcolor
                        : SettingsPageColor.textColor,
                  ),
                ),
                value: food,
                onChanged: (bool v) {
                  food = v;
                  setState(() {});
                }),
            Container(
              height: MediaQuery.of(context).size.height * 0.08,
              width: MediaQuery.of(context).size.height * 0.2,
              margin: EdgeInsets.symmetric(vertical: 20.0),
              alignment: Alignment.center,
              child: Text(
                'Start',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(MyRadius.extralarge),
                  color: Colors.black),
            ).onClick(() {
              Navigator.pushNamedAndRemoveUntil(
                  context, '/homepage', (route) => false);
            })
          ],
        ),
      ),
    );
  }
}
