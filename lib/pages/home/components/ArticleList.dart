import 'package:dio_wanandroid/api/api.dart';
import 'package:dio_wanandroid/config/routeConfig.dart';
import 'package:dio_wanandroid/dio_util/dio_util.dart';
import 'package:dio_wanandroid/model/article_list_entity.dart';
import 'package:dio_wanandroid/pages/webview/web_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ArticleList extends StatefulWidget {
  const ArticleList({Key? key}) : super(key: key);

  @override
  State<ArticleList> createState() => _ArticleListState();
}

class _ArticleListState extends State<ArticleList> {
  List<ArticleListDatas> articleList = [];
  int total = 0;

  void fetchArticleList() async {
    ArticleListEntity res =
        await DioUtil().request<ArticleListEntity>(Api.articleApi);
    setState(() {
      total = res.total;
      articleList = res.datas;
    });
  }

  @override
  void initState() {
    super.initState();

    fetchArticleList();
  }

  @override
  Widget build(BuildContext context) {
    return SliverFixedExtentList(
      itemExtent: 68,
      delegate: SliverChildBuilderDelegate(
        (_, int index) => ListTile(
          title: Text(
            articleList[index].title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          subtitle: Text(articleList[index].shareUser),
          trailing: const Icon(Icons.keyboard_arrow_right),
          onTap: () {
            RouteConfig.jumpWebView(articleList[index].link);
          },
        ),
        childCount: articleList.length,
      ),
    );
  }
}
