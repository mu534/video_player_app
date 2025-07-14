import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class VideoInfoController extends GetxController {
  var info = [].obs;

  @override
  void onInit() {
    super.onInit();
    loadInfo();
  }

  void loadInfo() async {
    final jsonStr = await rootBundle.loadString("json/video_info.json");
    info.value = json.decode(jsonStr);
  }
}
