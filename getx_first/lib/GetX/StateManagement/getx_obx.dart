import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_first/GetX/StateManagement/getx_controller.dart';

class ObxByGetX extends StatelessWidget {
  final _controller = Get.put(MyController());

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
              Obx(
                () => Text(
                  "Value is : ${_controller.value.value}",
                  style: TextStyle(fontSize: 23),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                child: Text("Increse Value by Obx"),
                onPressed: () async {
                  _controller.increment();
                },
              ),
              SizedBox(
                height: 40,
              ),
              Obx(
                () => Text(
                  "Name is : ${_controller.student.name.value}",
                  style: TextStyle(fontSize: 23),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                child: Text("To UpperLower "),
                onPressed: () async {
                  _controller.upperTheName();
                },
              ),
              Obx(
                () => Text(
                  "Name is : ${_controller.student2.value.name}",
                  style: TextStyle(fontSize: 23),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                child: Text("To UpperLower By Class"),
                onPressed: () async {
                  _controller.upperTheNameByClass();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
