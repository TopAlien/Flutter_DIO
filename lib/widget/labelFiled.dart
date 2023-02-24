import 'package:flutter/material.dart';
import 'package:dio_wanandroid/utils/fontSize.dart';

class LabelFiled extends StatelessWidget {
  /// 标题栏
  const LabelFiled({Key? key, required this.label}) : super(key: key);

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.only(top: 24, bottom: 10),
      child: Text(
        label,
        style: const TextStyle(
          fontSize: FontSizeUtils.FONT_SIZE_18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
