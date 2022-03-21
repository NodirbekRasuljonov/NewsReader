import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hive/hive.dart';
import 'package:newsreader/core/constants/colorconstants.dart';
import 'package:newsreader/core/constants/myfonts.dart';
import 'package:newsreader/main.dart';
import 'package:newsreader/screens/tabbars/newspage.dart';
import 'package:newsreader/models/applemodel.dart';
import 'package:newsreader/screens/tabbars/savedmassage.dart';
import 'package:newsreader/screens/tabbars/searchpage.dart';
import 'package:newsreader/screens/tabbars/settings.dart';
import 'package:newsreader/services/myservice.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  TabController? _tabController;

  final PageStorageBucket _bucket = PageStorageBucket();
  bool saved = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  Box<Article> savedbox = Hive.box('savedmassage');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        child: PageStorage(
          bucket: _bucket,
          child: TabBarView(
            controller: _tabController,
            children: [
              NewsPage(isdark: MyApp.isDarkmode),
              SavedMassage(saved: savedbox),
              SettingsPage()
            ],
          ),
        ),
      )),
      bottomNavigationBar: TabBar(
          physics: NeverScrollableScrollPhysics(),
          indicatorColor: Color.fromARGB(255, 114, 9, 9),
          controller: _tabController,
          tabs: const [
            Tab(
              icon: Icon(
                Icons.home_outlined,
                color: Colors.black,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.bookmark_border,
                color: Colors.black,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.settings,
                color: Colors.black,
              ),
            )
          ]),
    );
  }
}
