import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
class WebViewContainer extends StatefulWidget {
  const WebViewContainer({super.key});

  @override
  State<WebViewContainer> createState() => _WebViewContainerState();
}

class _WebViewContainerState extends State<WebViewContainer> {
  final controller = WebViewController()
  ..setJavaScriptMode(JavaScriptMode.disabled)
  ..loadRequest(Uri.parse('https://www.google.com'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebViewWidget
        (controller: controller,),
    );
  }
}
