import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_first/GetX/Validations_Storage/validation_storage.dart';

Future<void> main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: ValidationStorage(),
      // translations: LocalizedText(),
      // locale: Locale('en_US'),
      // fallbackLocale: Locale('en_US'),

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
