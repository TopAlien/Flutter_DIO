import 'dart:convert';

import 'package:flutter/material.dart';

class JsonUtil {
  static JsonEncoder encoder = JsonEncoder.withIndent('  ');

  /// 单纯的Json格式输出打印
  static void printJson(Object object) {
    try {
      var encoderString = encoder.convert(object);
      debugPrint(encoderString);
      // 下面这语句的效果与debugPrint 相同
      //prettyString.split('\n').forEach((element) => print(element));
    } catch (e) {
      print(e);
    }
  }
}
