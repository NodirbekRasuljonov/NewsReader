import 'package:flutter/material.dart';
import 'package:newsreader/core/constants/colorconstants.dart';
import 'package:newsreader/core/constants/myradius.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        key: PageStorageKey('search'),
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        color: Colors.yellow,
        // child: Column(
        //   children: [
        //     Container(
        //       height: 50.0,
        //       margin: const EdgeInsets.all(5.0),
        //       width: 360.0,
        //       decoration: BoxDecoration(
        //           borderRadius: BorderRadius.circular(MyRadius.medium),
        //           color: SearchPageColor.containercolor),
        //       // child: Row(children: [
        //       //   Padding(
        //       //     padding: const EdgeInsets.symmetric(horizontal: 5.0),
        //       //     child: IconButton(
        //       //         onPressed: () {}, icon: Icon(Icons.chevron_left)),
        //       //   )
        //       // ]),

        //       ),
        //     )
        //   ],
        // )
        child: ListView.builder(
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('Index:$index'),
            );
          },
          itemCount: 30,
        ),
      ),
    );
  }
}
