import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'go_back.dart';

/// Route2Page
/// Created by wangzhen on 2019-05-29.
class RoutePage2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _RoutePage2State();
}

class _RoutePage2State extends State<RoutePage2> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              GoBack.back(context);
            }),
        title: Text("Route2"),
        centerTitle: true,
      ),
      body: Center(
        child: new RaisedButton(
          onPressed: () {
            GoBack.back(context);
          },
          child: new Text("返回"),
        ),
      ),
    );
  }
}
