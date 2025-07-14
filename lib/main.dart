import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:minimal_chatapp/folder/home_page..dart';

import 'package:minimal_chatapp/folder/video_info.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Minimal Chat App',
      home: const HomePage(),
    );
  }
}
