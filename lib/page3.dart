import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  Page3({Key key}) : super(key: key);

  _Page3State createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('第三页'),
      ),
      body: Container(
        child: Center(
          child: Text('第三页'),
        ),
      ),
    );
  }
}