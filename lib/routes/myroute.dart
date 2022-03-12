
import 'package:flutter/material.dart';
import 'package:newsreader/screens/pages/home_page.dart';
import 'package:newsreader/screens/settingsscreen/about.dart';
import 'package:newsreader/screens/settingsscreen/interests.dart';
import 'package:newsreader/screens/settingsscreen/notification.dart';
import 'package:newsreader/screens/settingsscreen/profile.dart';
import 'package:newsreader/screens/settingsscreen/terms.dart';
import 'package:newsreader/screens/signup/signup.dart';
import 'package:newsreader/screens/signup/splashscreens.dart';

class MyRoute {
  static Route? onGenerateRoute(RouteSettings s) {
    var args = s.arguments;
    switch (s.name) {
      case '/splashscreen':
        return MaterialPageRoute(builder: (context) => const SplashScreen());
      case '/signup':
        return MaterialPageRoute(builder: (context) => const SignUpPage());
      case '/profile':
        return MaterialPageRoute(
            builder: (context) => ProfilePage(
                  isdark: (args as bool),
                ));
      case '/homepage':
        return MaterialPageRoute(builder: (context) => const MyHomePage());
      case '/terms':
        return MaterialPageRoute(
            builder: (context) => Terms.termspage(context, (args as bool)));
      case '/about':
        return MaterialPageRoute(
            builder: (context) => About.aboutpage(context, (args as bool)));
      case '/interests':
        return MaterialPageRoute(
            builder: (context) => InterestsPage(isdark: args as bool));
            case '/notification':
        return MaterialPageRoute(
            builder: (context) => NotificationPage(isdark: (args as bool),));
    }
  }
}
