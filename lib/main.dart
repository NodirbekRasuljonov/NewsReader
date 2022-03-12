import 'package:flutter/material.dart';
import 'package:newsreader/core/constants/colorconstants.dart';
import 'package:newsreader/routes/myroute.dart';
import 'package:newsreader/screens/pages/home_page.dart';
import 'package:newsreader/screens/settingsscreen/profile.dart';
import 'package:newsreader/screens/tabbars/settings.dart';
import 'package:newsreader/screens/settingsscreen/terms.dart';
import 'package:newsreader/screens/signup/signup.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NewsReaderApp',
      theme: ThemeData.light(),
      onGenerateRoute: MyRoute.onGenerateRoute,
      initialRoute: '/homepage',
      // home:  MyHomePage()
    );
  }
}
