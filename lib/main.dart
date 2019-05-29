import 'package:flutter/material.dart';
import 'package:flutter_module/detail_page.dart';
import 'package:flutter_module/route_page_2.dart';
import 'package:flutter_module/route_page_3.dart';

import 'home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Module',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: HomePage(),
      routes: <String, WidgetBuilder>{
        "detail_page": (context) => new DetailPage(),
        "route2": (context) => new RoutePage2(),
        "route3": (context) => new RoutePage3(),
      },
    );
  }
}
