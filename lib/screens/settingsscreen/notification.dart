import 'package:flutter/material.dart';
import 'package:newsreader/core/constants/colorconstants.dart';

class NotificationPage extends StatefulWidget {
  bool isdark;
  NotificationPage({Key? key, required this.isdark}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  bool pushnot = false;
  bool newrepl = false;
  bool newinterests = false;
  bool appnews = false;
  bool emailnot = false;
  bool emailrepl = false;
  bool emailinterest = false;
  bool emailapp = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: PageStorageKey('notification'),
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
          'Notifications',
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
                  'Push notifications',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: widget.isdark
                        ? SettingsPageColor.lightcolor
                        : SettingsPageColor.textColor,
                  ),
                ),
                value: pushnot,
                onChanged: (bool v) {
                  pushnot = v;
                  newrepl = v;
                  newinterests = v;
                  appnews = v;

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
                  'New reply to commentment',
                  style: TextStyle(
                    color: widget.isdark
                        ? SettingsPageColor.lightcolor
                        : SettingsPageColor.textColor,
                  ),
                ),
                value: newrepl,
                onChanged: (bool v) {
                  newrepl = v;
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
                  'New interest article',
                  style: TextStyle(
                    color: widget.isdark
                        ? SettingsPageColor.lightcolor
                        : SettingsPageColor.textColor,
                  ),
                ),
                value: newinterests,
                onChanged: (bool v) {
                  newinterests = v;
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
                  'Apps News and Updates',
                  style: TextStyle(
                    color: widget.isdark
                        ? SettingsPageColor.lightcolor
                        : SettingsPageColor.textColor,
                  ),
                ),
                value: appnews,
                onChanged: (bool v) {
                  appnews = v;
                  setState(() {});
                }),
            const SizedBox(
              height: 30.0,
            ),
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
                  'Email Notifications',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: widget.isdark
                        ? SettingsPageColor.lightcolor
                        : SettingsPageColor.textColor,
                  ),
                ),
                value: emailnot,
                onChanged: (bool v) {
                  emailnot = v;
                  emailapp = v;
                  emailinterest = v;
                  emailrepl = v;
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
                  'New reply to commentment',
                  style: TextStyle(
                    color: widget.isdark
                        ? SettingsPageColor.lightcolor
                        : SettingsPageColor.textColor,
                  ),
                ),
                value: emailrepl,
                onChanged: (bool v) {
                  emailrepl = v;
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
                  'New interest article',
                  style: TextStyle(
                    color: widget.isdark
                        ? SettingsPageColor.lightcolor
                        : SettingsPageColor.textColor,
                  ),
                ),
                value: emailinterest,
                onChanged: (bool v) {
                  emailinterest = v;
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
                  'App News and Updates',
                  style: TextStyle(
                    color: widget.isdark
                        ? SettingsPageColor.lightcolor
                        : SettingsPageColor.textColor,
                  ),
                ),
                value: emailapp,
                onChanged: (bool v) {
                  emailapp = v;
                  setState(() {});
                }),
          ],
        ),
      ),
    );
  }
}
