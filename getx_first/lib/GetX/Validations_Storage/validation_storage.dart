import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/route_manager.dart';
import 'package:get/utils.dart';
import 'package:get_storage/get_storage.dart';

class ValidationStorage extends StatelessWidget {
  ValidationStorage({Key? key}) : super(key: key);

  var _emailTextController = TextEditingController();
  var _storage = GetStorage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Validation & Storage"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(16.0),
              child: TextField(
                controller: _emailTextController,
                decoration: InputDecoration(
                  hintText: "Email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: ElevatedButton(
                child: Text("Write"),
                onPressed: () {
                  if (GetUtils.isEmail(_emailTextController.text)) {
                    _storage.write("email", _emailTextController.text).then(
                          (value) => {
                            Get.snackbar(
                              "Email",
                              "Email added",
                              snackPosition: SnackPosition.BOTTOM,
                            )
                          },
                        );
                  } else {
                    Get.snackbar(
                      "Incorrect Email",
                      "Provide Email in valid format",
                      snackPosition: SnackPosition.BOTTOM,
                    );
                  }
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: ElevatedButton(
                child: Text("Read"),
                onPressed: () {
                  print(_storage.read("email"));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
