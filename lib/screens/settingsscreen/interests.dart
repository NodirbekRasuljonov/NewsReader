import 'package:flutter/material.dart';
import 'package:newsreader/core/constants/colorconstants.dart';

class InterestsPage extends StatefulWidget {
  bool isdark;
  InterestsPage({Key? key, required this.isdark}) : super(key: key);

  @override
  State<InterestsPage> createState() => _InterestsPageState();
}

class _InterestsPageState extends State<InterestsPage> {
  bool all = false;
  bool wolrdnews = false;
  bool politics = false;
  bool technology = false;
  bool science = false;
  bool bussines = false;
  bool entertainment = false;
  bool food = false;
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
          ],
        ),
      ),
    );
  }

  // Padding switchtile({required String text, required bool val}) {
  //   return Padding(
  //     padding: EdgeInsets.symmetric(horizontal: 5.0),
  //     child: Material(
  //       color: widget.isdark ? ScaffoldColor.dark : ScaffoldColor.ligth,
  //       borderRadius: BorderRadius.circular(5.0),
  //       elevation: 1.0,
  //       child:
  //     ),
  //   );
  // }
}
