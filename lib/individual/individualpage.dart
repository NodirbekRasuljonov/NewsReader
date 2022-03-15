import 'package:flutter/material.dart';
import 'package:newsreader/models/applemodel.dart';

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
        leading: Icon(Icons.chevron_left),
      ),
    );
  }
}
