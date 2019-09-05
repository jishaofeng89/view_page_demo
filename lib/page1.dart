import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  Page1({Key key}) : super(key: key);

  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Center(
         child: Text('第一页'),
       ),
    );
  }
}