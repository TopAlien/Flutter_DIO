import 'package:flutter/material.dart';
import 'package:dio_wanandroid/widget/cacheImage/cacheImageNetwork.dart';

class TestGridView extends StatelessWidget {
  const TestGridView({Key? key, required this.list}) : super(key: key);

  final List<String> list;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: list.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 16,
        childAspectRatio: 0.8,
      ),
      itemBuilder: (BuildContext context, int index) {
        return CacheImageNetwork(url: list[index]);
      },
    );
  }
}
