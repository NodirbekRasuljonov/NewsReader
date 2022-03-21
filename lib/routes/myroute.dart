import 'package:flutter/material.dart';
import 'package:newsreader/individual/individualpage.dart';
import 'package:newsreader/models/applemodel.dart';
import 'package:newsreader/screens/pages/home_page.dart';
import 'package:newsreader/screens/settingsscreen/about.dart';
import 'package:newsreader/screens/settingsscreen/interests.dart';
import 'package:newsreader/screens/settingsscreen/notification.dart';
import 'package:newsreader/screens/settingsscreen/profile.dart';
import 'package:newsreader/screens/settingsscreen/terms.dart';
import 'package:newsreader/screens/signup/gmail.dart';
import 'package:newsreader/screens/signup/iinter.dart';
import 'package:newsreader/screens/signup/password.dart';
import 'package:newsreader/screens/signup/signup.dart';
import 'package:newsreader/screens/signup/splashscreens.dart';

class MyRoute {
  static Route? onGenerateRoute(RouteSettings s) {
    var args = s.arguments;
    switch (s.name) {
      case '/splashscreen':
        return MaterialPageRoute(
          builder: (context) => const SplashScreen(),
        );
      case '/signup':
        return MaterialPageRoute(
          builder: (context) => const SignUpPage(),
        );
      case '/gmail':
        return MaterialPageRoute(
          builder: (context) => const GmailPage(),
        );
      case '/password':
        return MaterialPageRoute(
          builder: ((context) => const PasswordPage()),
        );
        case '/signinter':
        return MaterialPageRoute(
          builder: ((context) =>  SignInter(isdark: args as bool,)),
        );
      case '/profile':
        return MaterialPageRoute(
            builder: (context) => ProfilePage(
                  isdark: (args as bool),
                ));
      case '/homepage':
        return MaterialPageRoute(
          builder: (context) => MyHomePage(),
        );
      case '/terms':
        return MaterialPageRoute(
          builder: (context) => Terms.termspage(
            context,
            (args as bool),
          ),
        );
      case '/about':
        return MaterialPageRoute(
          builder: (context) => About.aboutpage(
            context,
            (args as bool),
          ),
        );
      case '/interests':
        return MaterialPageRoute(
          builder: (context) => InterestsPage(isdark: args as bool),
        );
      case '/notification':
        return MaterialPageRoute(
          builder: (context) => NotificationPage(
            isdark: (args as bool),
          ),
        );
      case '/indi':
        return MaterialPageRoute(
          builder: (context) => IndividualPage(news: args as Article),
        );
    }
  }
}
