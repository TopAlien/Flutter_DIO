import 'package:flutter/material.dart';

class ColorUtil {
  ///  user
  /// 1. ColorUtil.fromHex('#F96600')
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  /// use
  /// 1. ColorsUtil.hexColor(0x3caafa)//透明度为1
  /// 2.ColorsUtil.hexColor(0x3caafa,alpha: 0.5)//透明度为0.5
  static Color hexColor(int hex, {double alpha = 1}) {
    if (alpha < 0) {
      alpha = 0;
    } else if (alpha > 1) {
      alpha = 1;
    }
    return Color.fromRGBO((hex & 0xFF0000) >> 16, (hex & 0x00FF00) >> 8, (hex & 0x0000FF) >> 0, alpha);
  }

  /// 字体颜色

  // 白色
  static const Color WHITE = Color(0xFFFFFFFF);
  static const Color CLEAR = Color(0x00000000);

  // 次要内容 Grey 灰色
  static const Color TEXT_GRAY = Colors.grey;

  // 时间戳与表单缺省值 Light 灰色
  static const Color TEXT_LIGHT_GRAY = Color(0xFFb2b2b2);

  // 大段的说明内容而且属于主要内容用 Semi 黑
  static const Color TEXT_SEMI_GRAY = Color(0xFF353535);

  // tab背景色
  static const Color TAB_UN_SELECT_BG = Color(0xFFEAEAEA);

  // 阴影颜色
  static const Color BOX_SHADOW = Color(0x1A000000);

  /// 以下设置按钮颜色

  // DARK 正常颜色
  static Color PRIMARY_THEME = fromHex('#4338ca');

  static const Color DARK_BLUE_NORMAL = Color(0xFF576b95);

  // DARK 按压颜色
  static const Color DARK_BLUE_PRESS = Color(0x33576b95);

  // DARK 禁止点击颜色
  static const Color DARK_BLUE_DISABLE = Color(0x1A576b95);

  // BLUE 正常颜色
  static const Color BLUE_NORMAL = Color(0xFF0193f4);

  // BLUE 按压颜色
  static const Color BLUE_PRESS = Color(0x330193f4);

  // BLUE 禁止点击颜色
  static const Color BLUE_DISABLE = Color(0x1A0193f4);

  // RED 正常颜色
  static const Color RED_NORMAL = Color(0xFFe64340);

  // RED 按压颜色
  static const Color RED_PRESS = Color(0x33e64340);

  // RED 禁止点击颜色
  static const Color RED_DISABLE = Color(0x1Ae64340);
}
