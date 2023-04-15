import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Bullets'),
        centerTitle: true,
      ),
      body: WebView(
        initialUrl: 'https://github.com/Bullets-jyr',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
