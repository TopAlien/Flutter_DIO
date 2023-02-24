import 'package:dio_wanandroid/pages/profile/Profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dio_wanandroid/pages/home/Home.dart';
import 'package:dio_wanandroid/pages/webview/web_view.dart';

abstract class RouteConfig {
  /// webView
  ///
  /// Get.arguments { webUrl }
  static const webView = '/webView';

  /// 404页面
  // static final unknownPage = GetPage(name: '/notFound', page: () => const UnknownPage());

  static List<Widget> tabPages = [const HomePage(), const Profile()];

  static List<BottomNavigationBarItem> tabItems = [
    const BottomNavigationBarItem(
      icon: Icon(
        Icons.home,
      ),
      label: "首页",
    ),
    const BottomNavigationBarItem(
      icon: Icon(
        Icons.accessibility,
      ),
      label: "我的",
    ),
  ];

  /// 路由
  static final routes = [
    GetPage(
      name: webView,
      page: () => const MyWebView(),
    ),
  ];

  static jumpWebView(String webUrl) {
    Get.toNamed(webView, arguments: {"webUrl": webUrl});
  }
}
