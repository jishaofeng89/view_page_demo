import 'package:flutter/material.dart';
import 'package:view_page_demo/page3.dart';

class Page2 extends StatefulWidget {
  Page2({Key key}) : super(key: key);

  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  void jumpInspect() async {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return Page3();
    }));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(
        Duration(
          microseconds: 800,
        ),
        jumpInspect);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('第二页'),
      ),
    );
  }
}
