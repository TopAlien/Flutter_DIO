import 'package:dio_wanandroid/config/routeConfig.dart';
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
        brightness: Brightness.light,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      getPages: RouteConfig.routes,
      home: BottomNavigationWidget(),
    );
  }
}

class BottomNavigationWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => BottomNavigationWidgetState();
}

class BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  int _currentIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(), // 禁用左右滑动
        controller: _pageController,
        children: RouteConfig.tabPages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: RouteConfig.tabItems,
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
            _pageController.jumpToPage(_currentIndex);
          });
        },
        fixedColor: const Color.fromRGBO(234, 214, 77, 1.0),
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
