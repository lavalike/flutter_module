import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_module/platform/platform.dart';

import 'go_back.dart';

/// Route1Page
/// Created by wangzhen on 2019-05-29.
class DetailPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              GoBack.back(context);
            }),
        elevation: 0,
        actions: <Widget>[
          new Padding(
            padding: EdgeInsets.only(right: 10),
            child: new SizedBox(
              width: 26,
              height: 26,
              child: new GestureDetector(
                onTap: () {
                  Platform.showToast("打赏");
                },
                child: new CircleAvatar(
                  backgroundColor: Color(0xFFDBDBDB),
                  child: Text(
                    "赏",
                    style: new TextStyle(
                      color: Color(0xFF3B424C),
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return ListView(
      children: <Widget>[
        _buildTitle(),
        _buildOtherInfo(),
        _buildContent(),
      ],
    );
  }

  Widget _buildContent() {
    return Column(
      children: <Widget>[
        Image.asset("assets/images/bg.jpg", height: 211, fit: BoxFit.cover),
        Padding(
          padding: EdgeInsets.all(15),
          child: Text(
            "宜家与洛杉矶设计师 Chris Stamp 推出的联名系列 SPÄNST 将于 5 月正式发售。 在瑞典语中是“灵活性”的意思，目标客户主要是针对活跃生活方式的年轻人。Chris Stamp 在设计中融入了街头文化元素，也充满了设计师最具特色的单色极简主义风格。这也是宜家首次出现篮球框和滑板之类的产品，使用了木材、皮革和树脂玻璃等材料。",
            style: TextStyle(fontSize: 17, color: Color(0xFF3B424C)),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(15),
          child: Text(
            "宜家与洛杉矶设计师 Chris Stamp 推出的联名系列 SPÄNST 将于 5 月正式发售。 在瑞典语中是“灵活性”的意思，目标客户主要是针对活跃生活方式的年轻人。Chris Stamp 在设计中融入了街头文化元素，也充满了设计师最具特色的单色极简主义风格。这也是宜家首次出现篮球框和滑板之类的产品，使用了木材、皮革和树脂玻璃等材料。",
            style: TextStyle(fontSize: 17, color: Color(0xFF3B424C)),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(15),
          child: Text(
            "宜家与洛杉矶设计师 Chris Stamp 推出的联名系列 SPÄNST 将于 5 月正式发售。 在瑞典语中是“灵活性”的意思，目标客户主要是针对活跃生活方式的年轻人。Chris Stamp 在设计中融入了街头文化元素，也充满了设计师最具特色的单色极简主义风格。这也是宜家首次出现篮球框和滑板之类的产品，使用了木材、皮革和树脂玻璃等材料。",
            style: TextStyle(fontSize: 17, color: Color(0xFF3B424C)),
          ),
        ),
      ],
    );
  }

  Widget _buildOtherInfo() {
    return Padding(
      padding: EdgeInsets.only(left: 15, right: 15, bottom: 15),
      child: new Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          new CircleAvatar(
            backgroundImage: new AssetImage("assets/images/bg.jpg"),
          ),
          new Expanded(
            flex: 1,
            child: new Padding(
              padding: EdgeInsets.only(left: 10),
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Text(
                    "设计周",
                    style: new TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF3B424C),
                    ),
                  ),
                  new Text(
                    "2017年08月04日 05:53",
                    style: new TextStyle(
                      fontSize: 12,
                      color: Color(0xFFA0A4A9),
                    ),
                  ),
                ],
              ),
            ),
          ),
          new GestureDetector(
            onTap: () {
              Platform.showToast("点击订阅");
            },
            child: new Container(
              alignment: Alignment.center,
              width: 78,
              height: 30,
              decoration: new BoxDecoration(
                color: Color(0xFFFDC247),
                borderRadius: BorderRadius.all(new Radius.circular(100)),
              ),
              child: new Text(
                "+订阅",
                style: new TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF3B424C)),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTitle() {
    return Padding(
      padding: EdgeInsets.all(15),
      child: Text(
        "宜家的联名系列 SPÄNST，单品有的还蛮酷的｜这个设计了不起",
        style: new TextStyle(
          fontSize: 16,
          color: new Color(0xFF3B424C),
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
