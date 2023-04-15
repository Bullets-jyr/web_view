import 'package:flutter/material.dart';
import 'package:web_view/screen/home_screen.dart';

void main() {
  // Flutter 프레임워크가
  // 앱을 실행할 준비가 될때까지 기다린다.
  // 만약에 main함수 안에 유일하게 실행하는 함수가 runApp함수이면,
  // 자동으로 실행이된다. 우리가 작성하지 않아도 자동으로 실행되는 함수
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    MaterialApp(
      home: HomeScreen(),
    ),
  );
}