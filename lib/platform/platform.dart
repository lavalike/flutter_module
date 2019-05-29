import 'package:flutter/services.dart';

/// platform 封装通用工具
/// Created by wangzhen on 2019-05-29.
class Platform {
  static const CHANNEL_NAME = "com.wangzhen.mixed_flutter/ui";
  static const platform = MethodChannel(CHANNEL_NAME);

  /// 返回上一页
  static void goBack() async {
    await platform.invokeMethod("back");
  }

  /// 弹出Toast
  static void showToast(String msg) async {
    await platform.invokeMethod("show_toast", msg);
  }
}
