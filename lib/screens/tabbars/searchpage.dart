import 'package:flutter/material.dart';
import 'package:newsreader/core/constants/myradius.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20.0),
            decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(MyRadius.medium)),
            height: 50.0,
            width: double.infinity,
          ),
          Expanded(
              child: Container(
            color: Colors.blue,
          ))
        ],
      ),
    );
  }
}
