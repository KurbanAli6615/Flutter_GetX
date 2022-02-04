import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomSheetGetX extends StatelessWidget {
  const BottomSheetGetX({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blueGrey,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Get.bottomSheet(
                    Container(
                      child: Wrap(
                        children: [
                          ListTile(
                            leading: Icon(Icons.wb_sunny_outlined),
                            title: Text(
                              "Light Theme",
                              style: TextStyle(color: Colors.black),
                            ),
                            onTap: () {
                              // Get.changeTheme(ThemeData.light());
                            },
                          ),
                          ListTile(
                            leading: Icon(Icons.wb_sunny),
                            title: Text(
                              "Dark Theme",
                              style: TextStyle(color: Colors.black),
                            ),
                            onTap: () {
                              // Get.changeTheme(ThemeData.dark());
                            },
                          ),
                        ],
                      ),
                    ),
                    backgroundColor: Colors.white,
                    isDismissible: true,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                      ),
                    ),
                    enableDrag: false,
                  );
                },
                child: Text("Show BottomSheet"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
