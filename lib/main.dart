import 'package:flutter/material.dart';
import 'package:gpt_test/webview_container.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() => runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => WebViewExample(),
        '/webViewContainer': (context) => WebViewContainer(),
},
    ),
);

class WebViewExample extends StatefulWidget {
  const WebViewExample({super.key});

  @override
  State<WebViewExample> createState() => _WebViewExampleState();
}

class _WebViewExampleState extends State<WebViewExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
    title: Text('Webview Flutter'),
centerTitle: true,
    ),
    body: content(),
    );
  }

  Widget content() {
    return Center(
    child: ElevatedButton(
    onPressed: (){
      Navigator.of(context).pushNamed('/webViewContainer');
},
child: Text('Open Webview'),
    ),
    );
}
}
