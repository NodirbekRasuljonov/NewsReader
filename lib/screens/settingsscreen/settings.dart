import 'package:flutter/material.dart';
import 'package:newsreader/core/constants/colorconstants.dart';
import 'package:newsreader/core/constants/myfonts.dart';
import 'package:newsreader/screens/settingsscreen/profile.dart';
import 'package:newsreader/screens/settingsscreen/terms.dart';
import 'package:newsreader/screens/signup/splashscreens.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);
  static bool isDarkmode = true;

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  static bool isDarkmode = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: isDarkmode ? ScaffoldColor.dark : ScaffoldColor.ligth,
      height: MediaQuery.of(context).size.height * 0.7,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'Settings',
              style: TextStyle(
                  color: isDarkmode
                      ? SettingsPageColor.lightcolor
                      : SettingsPageColor.textColor,
                  fontSize: MyFonts.medium,
                  fontWeight: FontWeight.w700),
            ),
          ),
          Card(
            color: isDarkmode ? ScaffoldColor.dark : ScaffoldColor.ligth,
            child: ListTile(
              leading: Icon(
                Icons.person_pin,
                color: isDarkmode
                    ? SettingsPageColor.lightcolor
                    : SettingsPageColor.textColor,
              ),
              title: Text(
                'Profile',
                style: TextStyle(
                    color: isDarkmode
                        ? SettingsPageColor.lightcolor
                        : SettingsPageColor.textColor),
              ),
              trailing: Icon(
                Icons.chevron_right,
                color: SettingsPageColor.trailingcolor,
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ProfilePage(
                              isdark: isDarkmode,
                            )));
              },
            ),
          ),
          Card(
            color: isDarkmode ? ScaffoldColor.dark : ScaffoldColor.ligth,
            child: ListTile(
              leading: Icon(
                Icons.person,
                color: isDarkmode
                    ? SettingsPageColor.lightcolor
                    : SettingsPageColor.textColor,
              ),
              title: Text(
                'Account',
                style: TextStyle(
                  color: isDarkmode
                      ? SettingsPageColor.lightcolor
                      : SettingsPageColor.textColor,
                ),
              ),
              trailing: Icon(
                Icons.chevron_right,
                color: SettingsPageColor.trailingcolor,
              ),
            ),
          ),
          Card(
            color: isDarkmode ? ScaffoldColor.dark : ScaffoldColor.ligth,
            child: ListTile(
              onTap: () {
                Navigator.pushNamed(context, '/interests',
                    arguments: isDarkmode);
              },
              leading: Icon(
                Icons.star_border,
                color: isDarkmode
                    ? SettingsPageColor.lightcolor
                    : SettingsPageColor.textColor,
              ),
              title: Text(
                'Interests',
                style: TextStyle(
                  color: isDarkmode
                      ? SettingsPageColor.lightcolor
                      : SettingsPageColor.textColor,
                ),
              ),
              trailing: Icon(
                Icons.chevron_right,
                color: SettingsPageColor.trailingcolor,
              ),
            ),
          ),
          Card(
            color: isDarkmode ? ScaffoldColor.dark : ScaffoldColor.ligth,
            child: ListTile(
              onTap: () {
                Navigator.pushNamed(context, '/notification',arguments: isDarkmode);
              },
              leading: Icon(
                Icons.notifications_none,
                color: isDarkmode
                    ? SettingsPageColor.lightcolor
                    : SettingsPageColor.textColor,
              ),
              title: Text(
                'Notifications',
                style: TextStyle(
                  color: isDarkmode
                      ? SettingsPageColor.lightcolor
                      : SettingsPageColor.textColor,
                ),
              ),
              trailing: Icon(
                Icons.chevron_right,
                color: SettingsPageColor.trailingcolor,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.0),
            child: Material(
              color: isDarkmode ? ScaffoldColor.dark : ScaffoldColor.ligth,
              borderRadius: BorderRadius.circular(5.0),
              elevation: 1.0,
              child: SwitchListTile.adaptive(
                  activeTrackColor:
                      isDarkmode ? ScaffoldColor.ligth : ScaffoldColor.dark,
                  inactiveThumbColor:
                      isDarkmode ? ScaffoldColor.dark : ScaffoldColor.ligth,
                  activeColor:
                      isDarkmode ? ScaffoldColor.ligth : ScaffoldColor.dark,
                  secondary: Icon(
                    Icons.wb_sunny,
                    color: isDarkmode
                        ? SettingsPageColor.lightcolor
                        : SettingsPageColor.textColor,
                  ),
                  title: Text(
                    'Dark Mode',
                    style: TextStyle(
                      color: isDarkmode
                          ? SettingsPageColor.lightcolor
                          : SettingsPageColor.textColor,
                    ),
                  ),
                  value: isDarkmode,
                  onChanged: (v) {
                    isDarkmode = v;
                    setState(() {});
                  }),
            ),
          ),
          Card(
            color: isDarkmode ? ScaffoldColor.dark : ScaffoldColor.ligth,
            child: ListTile(
              onTap: () {
                Navigator.pushNamed(context, '/terms', arguments: isDarkmode);
              },
              leading: Icon(
                Icons.help_outline_sharp,
                color: isDarkmode
                    ? SettingsPageColor.lightcolor
                    : SettingsPageColor.textColor,
              ),
              title: Text(
                'Terms & Conditions',
                style: TextStyle(
                  color: isDarkmode
                      ? SettingsPageColor.lightcolor
                      : SettingsPageColor.textColor,
                ),
              ),
              trailing: Icon(
                Icons.chevron_right,
                color: SettingsPageColor.trailingcolor,
              ),
            ),
          ),
          Card(
            color: isDarkmode ? ScaffoldColor.dark : ScaffoldColor.ligth,
            child: ListTile(
              onTap: () {
                Navigator.pushNamed(context, '/about', arguments: isDarkmode);
              },
              leading: Icon(
                Icons.info_outlined,
                color: isDarkmode
                    ? SettingsPageColor.lightcolor
                    : SettingsPageColor.textColor,
              ),
              title: Text(
                'About',
                style: TextStyle(
                  color: isDarkmode
                      ? SettingsPageColor.lightcolor
                      : SettingsPageColor.textColor,
                ),
              ),
              trailing: Icon(
                Icons.chevron_right,
                color: SettingsPageColor.trailingcolor,
              ),
            ),
          ),
          Card(
            color: isDarkmode ? ScaffoldColor.dark : ScaffoldColor.ligth,
            child: ListTile(
              onTap: () {
                Navigator.pushReplacementNamed(context, '/splashscreen');
              },
              leading: Icon(
                Icons.login,
                color: isDarkmode
                    ? SettingsPageColor.lightcolor
                    : SettingsPageColor.textColor,
              ),
              title: Text(
                'Log out',
                style: TextStyle(
                  color: isDarkmode
                      ? SettingsPageColor.lightcolor
                      : SettingsPageColor.textColor,
                ),
              ),
              trailing: Icon(
                Icons.chevron_right,
                color: SettingsPageColor.trailingcolor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
