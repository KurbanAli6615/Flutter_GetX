import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SnackBarByGetX extends StatelessWidget {
  const SnackBarByGetX({Key? key}) : super(key: key);

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
                  Get.snackbar(
                    "Hello SnackBar",
                    "SnackBar from GetX",
                    snackPosition: SnackPosition.BOTTOM,
                    animationDuration: Duration(milliseconds: 500),
                    isDismissible: true,
                    duration: Duration(seconds: 5),
                    icon: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                    mainButton: TextButton(
                      onPressed: () {},
                      child: Text("TextButton"),
                    ),
                    onTap: (val) {
                      print("Snackbar Clicked ");
                    },
                    overlayBlur: 3,
                    progressIndicatorBackgroundColor: Colors.deepOrange,
                    showProgressIndicator: true,
                  );
                },
                child: Text("Show SnackBar"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
