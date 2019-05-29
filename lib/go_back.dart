import 'package:flutter/cupertino.dart';
import 'package:flutter_module/platform/platform.dart';

/// GoBack
/// Created by wangzhen on 2019-05-29.
class GoBack {
  static back(BuildContext context) {
    if (Navigator.canPop(context)) {
      Navigator.pop(context);
    } else {
      Platform.goBack();
    }
  }
}
