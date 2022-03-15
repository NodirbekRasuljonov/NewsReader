import 'package:flutter/material.dart';

class SavedMassage extends StatefulWidget {
  const SavedMassage({ Key? key }) : super(key: key);

  @override
  State<SavedMassage> createState() => _SavedMassageState();
}

class _SavedMassageState extends State<SavedMassage> {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      key: PageStorageKey('saved'),
      color: Colors.blue,
      
    );
  }
}