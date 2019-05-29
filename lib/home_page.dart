import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_module/detail_page.dart';
import 'package:flutter_module/route_page_2.dart';
import 'package:flutter_module/route_page_3.dart';

/// HomePage
/// Created by wangzhen on 2019-05-28.
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("主页"),
        elevation: 0,
        centerTitle: true,
      ),
      body: new Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          new RaisedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                    builder: (context) => new DetailPage(),
                  ));
            },
            child: new Text("详情页"),
          ),
          new RaisedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                    builder: (context) => new RoutePage2(),
                  ));
            },
            child: new Text("Route2"),
          ),
          new RaisedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                    builder: (context) => new RoutePage3(),
                  ));
            },
            child: new Text("Route3"),
          ),
        ],
      ),
    );
  }
}
