import 'package:dio_wanandroid/pages/webview/web_view.dart';
import 'package:get/get.dart';

abstract class RouteConfig {
  /// webView
  ///
  /// Get.arguments { webUrl }
  static const webView = '/webView';

  /// 404页面
  // static final unknownPage = GetPage(name: '/notFound', page: () => const UnknownPage());

  // static List<Widget> tabPages = [const HomePage(), const ServicePage(), const OrderPage(), const ProfilePage()];

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
