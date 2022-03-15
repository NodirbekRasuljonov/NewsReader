import 'package:flutter/material.dart';
import 'package:newsreader/core/constants/colorconstants.dart';
import 'package:newsreader/models/applemodel.dart';
import 'package:newsreader/routes/myroute.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main(List<String> args) async {
  await Hive.initFlutter();
  Adapters.registeradapter();

  await Hive.openBox<AppleModel>('applebox');
  await Hive.openBox<Article>('savedmassage');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static bool isDarkmode = false;
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NewsReaderApp',
      theme: ThemeData(
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
              backgroundColor:
                  isDarkmode ? ScaffoldColor.dark : ScaffoldColor.ligth),
          bottomAppBarColor:
              isDarkmode ? ScaffoldColor.dark : ScaffoldColor.ligth,
          scaffoldBackgroundColor:
              isDarkmode ? ScaffoldColor.dark : ScaffoldColor.ligth),
      onGenerateRoute: MyRoute.onGenerateRoute,
      initialRoute: '/homepage',

      // home:  MyHomePage()
    );
  }
}
