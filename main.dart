// 에러의 원인
// 따로 User-Agent 값을 추가하지 않으면 기본적으로 'Dart/<version>(dart:io)` 가 들어감

// 방법 1. (local? override)
// [home_screen.dart]
// headers에 useragent 추가

// 방법 2. (global override)
// [main.dart]

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webtoon/screen/home_screen.dart';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..userAgent =
          'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Mobile Safari/537.36';
  }
}

void main() {
  HttpOverrides.global = MyHttpOverrides();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
