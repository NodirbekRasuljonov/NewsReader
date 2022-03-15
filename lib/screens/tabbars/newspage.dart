import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:newsreader/core/constants/colorconstants.dart';
import 'package:newsreader/core/constants/myfonts.dart';
import 'package:newsreader/core/constants/myradius.dart';
import 'package:newsreader/models/applemodel.dart';
import 'package:newsreader/services/myservice.dart';

class NewsPage extends StatefulWidget {
  bool isdark;
  NewsPage({Key? key, required this.isdark}) : super(key: key);

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

  Box<AppleModel> applebox = Hive.box<AppleModel>('applebox');
  Box<Article> savedbox = Hive.box('savedmassage');

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      key: const PageStorageKey('news'),
      child: Column(
        children: [
          Container(
              height: MediaQuery.of(context).size.height * 0.200,
              width: double.infinity,
              color: widget.isdark ? ScaffoldColor.dark : ScaffoldColor.ligth,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 5.0),
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
            child: FutureBuilder(
                key: const PageStorageKey('news'),
                future: AppleService.getData(),
                builder: (context, AsyncSnapshot snapshot) {
                  if (!snapshot.hasData) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if (snapshot.hasError) {
                    return const Center(
                      child: Text('Please check your Network'),
                    );
                  } else {
                    return ListView.builder(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      itemExtent: MediaQuery.of(context).size.height * 0.235,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {},
                          child: Container(
                            color: const Color.fromARGB(255, 238, 237, 237),
                            height: MediaQuery.of(context).size.height * 0.150,
                            width: double.infinity,
                            margin: const EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: MediaQuery.of(context).size.height *
                                      0.195,
                                  width: MediaQuery.of(context).size.height *
                                      0.160,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: CachedNetworkImageProvider(
                                              snapshot.data!.articles![index]
                                                  .urlToImage
                                                  .toString()))),
                                ),
                                SizedBox(
                                  height: 180,
                                  width: 240,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.symmetric(
                                            horizontal: 5.0),
                                        alignment: Alignment.centerLeft,
                                        height: 100,
                                        width: double.infinity,
                                        child: Text(
                                          snapshot.data!.articles![index].title
                                              .toString(),
                                          style: TextStyle(
                                              color: HomePageColor.textcolor),
                                          textAlign: TextAlign.start,
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.symmetric(
                                            horizontal: 5.0),
                                        alignment: Alignment.centerLeft,
                                        height: 40.0,
                                        width: double.infinity,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            SizedBox(
                                              width: 100.0,
                                              child: Text(
                                                snapshot.data!.articles![index]
                                                    .author
                                                    .toString(),
                                                style: TextStyle(
                                                    color: HomePageColor
                                                        .textcolor2),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 3.0),
                                              child: IconButton(
                                                  onPressed: () {
                                                    if (!savedbox.containsKey(
                                                        snapshot.data
                                                            .articles[index])) {
                                                      savedbox.add(snapshot.data
                                                          .articles[index]);
                                                    }
                                                  },
                                                  icon: Icon(
                                                      Icons.bookmark_border)),
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 30.0,
                                        width: double.infinity,
                                        child: Row(
                                          children: [
                                            InkWell(
                                              onTap: () {},
                                              child: const Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 5.0),
                                                child: Text('Entertainment'),
                                              ),
                                            ),
                                            CircleAvatar(
                                              radius: 5.0,
                                              backgroundColor:
                                                  HomePageColor.textcolor2,
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 5.0),
                                              child: Text(
                                                  "${snapshot.data!.articles![index].publishedAt!.minute.toString()} m ago"),
                                            ),
                                            const SizedBox(
                                              width: 15.0,
                                            ),
                                            const Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 3.0),
                                              child: CircleAvatar(
                                                radius: 1.0,
                                                backgroundColor: Colors.black,
                                              ),
                                            ),
                                            const Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 3.0),
                                              child: CircleAvatar(
                                                radius: 1.0,
                                                backgroundColor: Colors.black,
                                              ),
                                            ),
                                            const Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 3.0),
                                              child: CircleAvatar(
                                                radius: 1.0,
                                                backgroundColor: Colors.black,
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                      itemCount: snapshot.data!.articles!.length,
                    );
                  }
                }),
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
