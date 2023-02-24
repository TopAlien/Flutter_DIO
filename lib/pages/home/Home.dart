import 'package:dio_wanandroid/pages/home/components/ArticleList.dart';
import 'package:dio_wanandroid/pages/home/components/Banner.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('首页'),
        elevation: 0,
      ),
      body: const SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: HomeBanner(),
            ),
            ArticleList(),
          ],
        ),
      ),
    );
  }
}
