import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_first/GetX/Localization/Localization.dart';
import 'package:getx_first/GetX/Routes/getx_named_routes.dart';
import 'package:getx_first/GetX/StateManagement/getx_obx.dart';
import 'package:getx_first/GetX/getx_dialog.dart';
import 'package:getx_first/GetX/getx_snackbar.dart';

import 'GetX/Localization/Localize_text.dart';
import 'GetX/Routes/getx_route_unnamed_navigation.dart';
import 'GetX/getx_bottomsheet.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: LocalizationByGetX(),
      translations: LocalizedText(),
      locale: Locale('en_US'),
      fallbackLocale: Locale('en_US'),

      // // Named Route
      // initialRoute: '/',
      // getPages: [
      //   GetPage(name: '/', page: () => NamedRouteByGetX()),
      //   GetPage(
      //     name: '/home',
      //     page: () => NamedRouteNavHome(),
      //     transition: Transition.leftToRight,
      //   ),
      // ],
      // unknownRoute: GetPage(name: '/notfound', page: () => UnkNownRoute()),
    );
  }
}
