import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'go_back.dart';

/// Route3Page
/// Created by wangzhen on 2019-05-29.
class RoutePage3 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _RoutePage3State();
}

class _RoutePage3State extends State<RoutePage3> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              GoBack.back(context);
            }),
        title: Text("Route3"),
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
