import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:newsreader/core/constants/colorconstants.dart';
import 'package:newsreader/models/applemodel.dart';

class SavedMassage extends StatefulWidget {
  Box<Article> saved;
  SavedMassage({Key? key, required this.saved}) : super(key: key);

  @override
  State<SavedMassage> createState() => _SavedMassageState();
}

class _SavedMassageState extends State<SavedMassage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text(
          'Bookmarked',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {},
              child: Container(
                color: const Color.fromARGB(255, 238, 237, 237),
                height: MediaQuery.of(context).size.height * 0.200,
                width: double.infinity,
                margin: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.195,
                      width: MediaQuery.of(context).size.height * 0.160,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: CachedNetworkImageProvider(widget.saved
                                  .getAt(index)!
                                  .urlToImage
                                  .toString()))),
                    ),
                    SizedBox(
                      height: 180,
                      width: 240,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 5.0),
                            alignment: Alignment.centerLeft,
                            height: 100,
                            width: double.infinity,
                            child: Text(
                              widget.saved.getAt(index)!.title.toString(),
                              style: TextStyle(color: HomePageColor.textcolor),
                              textAlign: TextAlign.start,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 5.0),
                            alignment: Alignment.centerLeft,
                            height: 40.0,
                            width: double.infinity,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: 100.0,
                                  child: Text(
                                    widget.saved
                                        .getAt(index)!
                                        .author
                                        .toString(),
                                    style: TextStyle(
                                        color: HomePageColor.textcolor2),
                                  ),
                                ),
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
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 5.0),
                                    child: Text('Entertainment'),
                                  ),
                                ),
                                CircleAvatar(
                                  radius: 5.0,
                                  backgroundColor: HomePageColor.textcolor2,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 5.0),
                                  child: Text(
                                      "${widget.saved.getAt(index)!.publishedAt!.minute.toString()} m ago"),
                                ),
                                const SizedBox(
                                  width: 15.0,
                                ),
                                const Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 3.0),
                                  child: CircleAvatar(
                                    radius: 1.0,
                                    backgroundColor: Colors.black,
                                  ),
                                ),
                                const Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 3.0),
                                  child: CircleAvatar(
                                    radius: 1.0,
                                    backgroundColor: Colors.black,
                                  ),
                                ),
                                const Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 3.0),
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
          itemCount: widget.saved.length,
        ),
      ),
    );
  }
}
