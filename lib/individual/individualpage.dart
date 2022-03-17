import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:newsreader/core/constants/colorconstants.dart';
import 'package:newsreader/core/constants/myfonts.dart';
import 'package:newsreader/core/constants/myradius.dart';
import 'package:newsreader/models/applemodel.dart';
import 'package:on_click/on_click.dart';

class IndividualPage extends StatefulWidget {
  Article news;
  IndividualPage({Key? key, required this.news}) : super(key: key);

  @override
  State<IndividualPage> createState() => _IndividualPageState();
}

class _IndividualPageState extends State<IndividualPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: Icon(
          Icons.chevron_left,
          color: IndividualPageColor.iconColor,
        ).onClick(
          () {
            Navigator.pop(context);
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Icon(
              Icons.bookmark_border,
              color: IndividualPageColor.iconColor,
            ).onClick(
              () {
                Navigator.pop(context);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Icon(
              Icons.logout,
              color: IndividualPageColor.iconColor,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          key: const PageStorageKey('indi'),
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.32,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: CachedNetworkImageProvider(
                            widget.news.urlToImage.toString()))),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Container(
                        child: Text(
                          widget.news.title.toString(),
                          style: TextStyle(fontSize: MyFonts.medium),
                        ),
                        height: MediaQuery.of(context).size.height * 0.150,
                        width: double.infinity,
                        alignment: Alignment.centerLeft,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              radius: MyRadius.extralarge,
                            ),
                            Text(
                                "${widget.news.publishedAt!.hour.toString()}h ago")
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: SizedBox(
                          child: Row(
                            children: [
                              Expanded(
                                child: SizedBox(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Icon(
                                        Icons.comment_bank_outlined,
                                        color: IndividualPageColor.iconColor,
                                      ),
                                      Text(
                                        '8 Comments',
                                        style: TextStyle(
                                            color:
                                                IndividualPageColor.iconColor),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: SizedBox(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Icon(
                                        Icons.favorite_border,
                                        color: IndividualPageColor.iconColor,
                                      ),
                                      Text(
                                        'Like',
                                        style: TextStyle(
                                            color:
                                                IndividualPageColor.iconColor),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: SizedBox(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Icon(
                                        Icons.share,
                                        color: IndividualPageColor.iconColor,
                                      ),
                                      Text(
                                        'Share',
                                        style: TextStyle(
                                            color:
                                                IndividualPageColor.iconColor),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.symmetric(vertical: 5.0),
                          height: MediaQuery.of(context).size.height,
                          child: Text(
                            widget.news.description.toString(),
                            style: TextStyle(fontSize: MyFonts.medium),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
