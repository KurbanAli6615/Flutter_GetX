import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_first/GetX/Localization/my_localization_controller.dart';

class LocalizationByGetX extends StatelessWidget {
  LocalizationByGetX({Key? key}) : super(key: key);

  LocalizationController _controller = Get.put(LocalizationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("localization".tr),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "hello".tr,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                _controller.changeLanguage(lang: 'en');
              },
              child: Text("English"),
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () {
                _controller.changeLanguage(lang: 'hi');
              },
              child: Text("Hindi"),
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () {
                _controller.changeLanguage(lang: 'fr');
              },
              child: Text("Franch"),
            ),
          ],
        ),
      ),
    );
  }
}
