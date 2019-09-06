import 'package:flutter/material.dart';
import 'package:view_page_demo/page1.dart';
import 'package:view_page_demo/page2.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentPageIndex = 0;
  PageController _pageController = PageController(initialPage: 0);

  void _pageChange(int index) {
    setState(() {
      if (_currentPageIndex != index) {
        _currentPageIndex = index;
      }
    });
  }

  void _onTap(int index) {
    _pageController.animateToPage(
      index,
      duration: Duration(
        microseconds: 300,
      ),
      curve: Curves.ease,
    );
  }

  var _pageList = [
    Page1(),
    Page2(),
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        body: PageView.builder(
          onPageChanged: _pageChange,
          controller: _pageController,
          itemBuilder: (BuildContext context, int index) {
            return _pageList[index];
          },
          itemCount: 2,
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.category),
              title: Text('首页'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message),
              title: Text('我的'),
            ),
          ],
          currentIndex: _currentPageIndex,
          onTap: _onTap,
        ),
      ),
    );
  }

  Future<bool> _onWillPop() {
    return showDialog(
          context: context,
          builder: (context) => new AlertDialog(
            title: new Text('提示'),
            content: new Text('确定退出应用吗？'),
            actions: <Widget>[
              new FlatButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: new Text('再看一会'),
              ),
              new FlatButton(
                onPressed: () => Navigator.of(context).pop(true),
                child: new Text('退出'),
              ),
            ],
          ),
        ) ??
        false;
  }
}
