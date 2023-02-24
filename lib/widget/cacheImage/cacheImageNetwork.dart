import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';

class CacheImageNetwork extends StatelessWidget{
  /// 缓存图片
  const CacheImageNetwork({Key? key, required this.url, this.width, this.height}) : super(key: key);

  final String url;

  final double? width;

  final double? height;

  @override
  Widget build(BuildContext context) {
    return ExtendedImage.network(
      url,
      cache: true,
      width: width,
      height: height,
      fit: BoxFit.fill,
    );
  }
}
