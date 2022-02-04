import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DialogByGetX extends StatelessWidget {
  const DialogByGetX({Key? key}) : super(key: key);

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
                  Get.defaultDialog(
                    title: "Custom Dialog",
                    titleStyle: TextStyle(fontSize: 20),
                    middleText: "Custom Dialog Middle Text",
                    middleTextStyle:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                    radius: 10,
                    content: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircularProgressIndicator(),
                        ],
                      ),
                    ),
                    barrierDismissible: false,
                    textCancel: "Cancel",
                    onCancel: () {},
                    textConfirm: "Confirm",
                    onConfirm: () {},
                    contentPadding: EdgeInsets.all(20),
                    actions: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Text("AC1"),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text("AC1"),
                      ),
                    ],
                  );
                },
                child: Text("Show Dialog"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
