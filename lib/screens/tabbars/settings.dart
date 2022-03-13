import 'package:flutter/material.dart';
import 'package:newsreader/core/constants/colorconstants.dart';
import 'package:newsreader/core/constants/myfonts.dart';
import 'package:newsreader/main.dart';
import 'package:newsreader/screens/settingsscreen/profile.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  static bool isDarkmode = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: MyApp.isDarkmode ? ScaffoldColor.dark : ScaffoldColor.ligth,
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
                  color: MyApp.isDarkmode
                      ? SettingsPageColor.lightcolor
                      : SettingsPageColor.textColor,
                  fontSize: MyFonts.medium,
                  fontWeight: FontWeight.w700),
            ),
          ),
          Card(
            color: MyApp.isDarkmode ? ScaffoldColor.dark : ScaffoldColor.ligth,
            child: ListTile(
              leading: Icon(
                Icons.person_pin,
                color: MyApp.isDarkmode
                    ? SettingsPageColor.lightcolor
                    : SettingsPageColor.textColor,
              ),
              title: Text(
                'Profile',
                style: TextStyle(
                    color: MyApp.isDarkmode
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
                              isdark: MyApp.isDarkmode,
                            )));
              },
            ),
          ),
          Card(
            color: MyApp.isDarkmode ? ScaffoldColor.dark : ScaffoldColor.ligth,
            child: ListTile(
              leading: Icon(
                Icons.person,
                color: MyApp.isDarkmode
                    ? SettingsPageColor.lightcolor
                    : SettingsPageColor.textColor,
              ),
              title: Text(
                'Account',
                style: TextStyle(
                  color: MyApp.isDarkmode
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
            color: MyApp.isDarkmode ? ScaffoldColor.dark : ScaffoldColor.ligth,
            child: ListTile(
              onTap: () {
                Navigator.pushNamed(context, '/interests',
                    arguments: MyApp.isDarkmode);
              },
              leading: Icon(
                Icons.star_border,
                color: MyApp.isDarkmode
                    ? SettingsPageColor.lightcolor
                    : SettingsPageColor.textColor,
              ),
              title: Text(
                'Interests',
                style: TextStyle(
                  color: MyApp.isDarkmode
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
            color: MyApp.isDarkmode ? ScaffoldColor.dark : ScaffoldColor.ligth,
            child: ListTile(
              onTap: () {
                Navigator.pushNamed(context, '/notification',
                    arguments: MyApp.isDarkmode);
              },
              leading: Icon(
                Icons.notifications_none,
                color: MyApp.isDarkmode
                    ? SettingsPageColor.lightcolor
                    : SettingsPageColor.textColor,
              ),
              title: Text(
                'Notifications',
                style: TextStyle(
                  color: MyApp.isDarkmode
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
              color:
                  MyApp.isDarkmode ? ScaffoldColor.dark : ScaffoldColor.ligth,
              borderRadius: BorderRadius.circular(5.0),
              elevation: 1.0,
              child: SwitchListTile.adaptive(
                  activeTrackColor: MyApp.isDarkmode
                      ? ScaffoldColor.ligth
                      : ScaffoldColor.dark,
                  inactiveThumbColor: MyApp.isDarkmode
                      ? ScaffoldColor.dark
                      : ScaffoldColor.ligth,
                  activeColor: MyApp.isDarkmode
                      ? ScaffoldColor.ligth
                      : ScaffoldColor.dark,
                  secondary: Icon(
                    Icons.wb_sunny,
                    color: MyApp.isDarkmode
                        ? SettingsPageColor.lightcolor
                        : SettingsPageColor.textColor,
                  ),
                  title: Text(
                    'Dark Mode',
                    style: TextStyle(
                      color: MyApp.isDarkmode
                          ? SettingsPageColor.lightcolor
                          : SettingsPageColor.textColor,
                    ),
                  ),
                  value: MyApp.isDarkmode,
                  onChanged: (v) {
                    MyApp.isDarkmode = v;
                    setState(() {});
                  }),
            ),
          ),
          Card(
            color: MyApp.isDarkmode ? ScaffoldColor.dark : ScaffoldColor.ligth,
            child: ListTile(
              onTap: () {
                Navigator.pushNamed(context, '/terms',
                    arguments: MyApp.isDarkmode);
              },
              leading: Icon(
                Icons.help_outline_sharp,
                color: MyApp.isDarkmode
                    ? SettingsPageColor.lightcolor
                    : SettingsPageColor.textColor,
              ),
              title: Text(
                'Terms & Conditions',
                style: TextStyle(
                  color: MyApp.isDarkmode
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
            color: MyApp.isDarkmode ? ScaffoldColor.dark : ScaffoldColor.ligth,
            child: ListTile(
              onTap: () {
                Navigator.pushNamed(context, '/about',
                    arguments: MyApp.isDarkmode);
              },
              leading: Icon(
                Icons.info_outlined,
                color: MyApp.isDarkmode
                    ? SettingsPageColor.lightcolor
                    : SettingsPageColor.textColor,
              ),
              title: Text(
                'About',
                style: TextStyle(
                  color: MyApp.isDarkmode
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
            color: MyApp.isDarkmode ? ScaffoldColor.dark : ScaffoldColor.ligth,
            child: ListTile(
              onTap: () {
                Navigator.pushReplacementNamed(context, '/splashscreen');
              },
              leading: Icon(
                Icons.login,
                color: MyApp.isDarkmode
                    ? SettingsPageColor.lightcolor
                    : SettingsPageColor.textColor,
              ),
              title: Text(
                'Log out',
                style: TextStyle(
                  color: MyApp.isDarkmode
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
