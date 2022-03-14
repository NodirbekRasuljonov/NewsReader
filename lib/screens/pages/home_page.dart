import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:newsreader/core/constants/colorconstants.dart';
import 'package:newsreader/core/constants/myfonts.dart';
import 'package:newsreader/main.dart';
import 'package:newsreader/screens/tabbars/newspage.dart';
import 'package:newsreader/models/applemodel.dart';
import 'package:newsreader/screens/tabbars/searchpage.dart';
import 'package:newsreader/screens/tabbars/settings.dart';
import 'package:newsreader/services/myservice.dart';

class MyHomePage extends StatefulWidget {
  
  MyHomePage({Key? key,}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  TabController? _tabController;

  final PageStorageBucket _bucket = PageStorageBucket();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

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
              SearchPage(),
              Container(
                key: PageStorageKey('book'),
                height: MediaQuery.of(context).size.height * 0.2,
                width: MediaQuery.of(context).size.height,
                color: Colors.red,
              ),
              SettingsPage()
            ],
          ),
        ),
      )),
      bottomNavigationBar: TabBar(
          physics: NeverScrollableScrollPhysics(),
          indicatorColor: SettingsPageColor.trailingcolor,
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
                Icons.search,
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


/**
 * TabBarView(
                  controller: _tabController,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.2,
                      width: 300,
                      color: Colors.red,
                    ),
                    Container(
                      color: Colors.yellow,
                      height: MediaQuery.of(context).size.height * 0.7,
                      width: double.infinity,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.2,
                      width: MediaQuery.of(context).size.height,
                      color: Colors.red,
                    ),
                    SettingsPage()
                  ],
                ),
 */