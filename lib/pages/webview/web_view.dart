import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MyWebView extends StatefulWidget {
  const MyWebView({Key? key}) : super(key: key);

  @override
  State<MyWebView> createState() => _MyWebViewState();
}

class _MyWebViewState extends State<MyWebView> {
  bool isLoading = true;
  String title = "哇咔咔";

  final String webUrl = Get.arguments["webUrl"];
  var controller = WebViewController();

  @override
  void initState() {
    super.initState();

    controller
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            if (progress == 100) {
              if (mounted) {
                setState(() {
                  isLoading = false;
                });
              }
            }
          },
          onPageStarted: (String url) {},
          onPageFinished: (String url) {},
          onWebResourceError: (WebResourceError error) {},
          onNavigationRequest: (NavigationRequest request) {
            if (request.url.startsWith('https://www.youtube.com/')) {
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse(webUrl));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(title),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            WebViewWidget(controller: controller),
            Offstage(
              offstage: !isLoading,
              child: const Center(
                child: Icon(Icons.downloading),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
