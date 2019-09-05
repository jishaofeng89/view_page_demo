import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  Page2({Key key}) : super(key: key);

  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Center(
         child: Text('第二页'),
       ),
    );
  }
}