import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatelessWidget {
  // 변수를 final로 선언하지 않았다면, 생성자의 const를 제거해줘야한다.
  WebViewController? controller;
  final homeUrl = 'https://github.com/Bullets-jyr';

  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Bullets'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              print('클릭!');
              if (controller == null) {
                return;
              }
              // The method 'loadUrl' can't be unconditionally invoked because the receiver can be 'null'.
              controller!.loadUrl(homeUrl);
            },
            icon: Icon(
              Icons.home,
            ),
          ),
        ],
      ),
      body: WebView(
        onWebViewCreated: (WebViewController controller) {
          this.controller = controller;
        },
        initialUrl: homeUrl,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
