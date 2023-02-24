import 'package:flutter/material.dart';
import 'package:dio_wanandroid/constant/cdn_image.dart';
import 'package:dio_wanandroid/widget/cacheImage/cacheImageNetwork.dart';

class Footer extends StatelessWidget {
  /// 底部-公司名称logo
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.only(bottom: 18, top: 40),
        child: const CacheImageNetwork(url: CdnImage.bottomLogo),
      ),
    );
  }
}
