import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocalizationController extends GetxController {
  void changeLanguage({required String lang}) {
    var locale = Locale(lang);
    Get.updateLocale(locale);
  }
}
