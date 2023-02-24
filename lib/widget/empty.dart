import 'package:flutter/material.dart';
import 'package:dio_wanandroid/widget/cacheImage/cacheImageNetwork.dart';

class EmptyData extends StatelessWidget {
  const EmptyData({
    Key? key,
    required this.label,
  }) : super(key: key);

  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const CacheImageNetwork(
          url: 'https://user-images.githubusercontent.com/507615/54591679-b0ceb580-4a65-11e9-925c-ad15b4eae93d.png',
        ),
        const SizedBox(height: 10),
        Text(label),
      ],
    );
  }
}
