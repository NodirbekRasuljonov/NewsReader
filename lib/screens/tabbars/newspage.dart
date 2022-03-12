import 'package:flutter/material.dart';
import 'package:newsreader/core/constants/colorconstants.dart';
import 'package:newsreader/core/constants/myradius.dart';
import 'package:newsreader/models/newsmodel.dart';
import 'package:newsreader/screens/tabbars/settings.dart';
import 'package:newsreader/services/myservice.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> with TickerProviderStateMixin {
  TabController? _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  List<String> cat = [
    'For You',
    'Top',
    'Politics',
    'Entertainment',
    'Bussines'
  ];
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
              height: 200.0,
              width: double.infinity,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 5.0),
                    height: 35.0,
                    width: double.infinity,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return categories(text: cat[index], index: index);
                      },
                      itemCount: cat.length,
                    ),
                  )
                ],
              )),
          Expanded(
            child: Container(color: Colors.teal),
          )
        ],
      ),
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
    );
  }

  Padding categories({required String text, required int index}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: ElevatedButton(
          style: ButtonStyle(
              alignment: Alignment.center,
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(MyRadius.medium))),
              backgroundColor: currentindex == index
                  ? MaterialStateProperty.all(NewsPageColor.categoirescolor2)
                  : MaterialStateProperty.all(NewsPageColor.categoirescolor)),
          onPressed: () {
            currentindex = index;
            setState(() {});
          },
          child: Text(
            text,
            style: TextStyle(
                color: currentindex == index
                    ? NewsPageColor.textcolor
                    : NewsPageColor.textcolor2),
          )),
    );
  }
}
