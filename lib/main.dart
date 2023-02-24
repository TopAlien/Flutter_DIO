import 'package:dio_wanandroid/config/routeConfig.dart';
import 'package:dio_wanandroid/pages/home/Home.dart';
import 'package:dio_wanandroid/pages/webview/web_view.dart';
import 'package:flutter/material.dart';
import 'package:dio_wanandroid/utils/color.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

void initSystem() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
  );
}

void main() {
  initSystem();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Dio Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        primaryColor: ColorUtil.PRIMARY_THEME,
      ),
      getPages: RouteConfig.routes,
      home: const HomePage(),
    );
  }
}
