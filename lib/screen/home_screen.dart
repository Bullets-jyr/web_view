import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

// 'https://github.com/Bullets-jyr'이라는 String을 Uri라는 클래스로 변경을 해준다.
final homeUrl = Uri.parse('https://github.com/Bullets-jyr');

class HomeScreen extends StatelessWidget {
  // 변수를 final로 선언하지 않았다면, 생성자의 const를 제거해줘야한다.
  // WebViewController? controller;
  WebViewController controller = WebViewController()
  ..setJavaScriptMode(JavaScriptMode.unrestricted)
  ..loadRequest(homeUrl);

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
              // if (controller == null) {
              //   return;
              // }
              // The method 'loadUrl' can't be unconditionally invoked because the receiver can be 'null'.
              // controller!.loadUrl(homeUrl);
              controller.loadRequest(homeUrl);
            },
            icon: Icon(
              Icons.home,
            ),
          ),
        ],
      ),
      body: WebViewWidget(
        controller: controller,
      ),
      // body: WebView(
      //   onWebViewCreated: (WebViewController controller) {
      //     this.controller = controller;
      //   },
      //   initialUrl: homeUrl,
      //   javascriptMode: JavascriptMode.unrestricted,
      // ),
    );
  }
}
