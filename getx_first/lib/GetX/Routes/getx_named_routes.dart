import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NamedRouteByGetX extends StatelessWidget {
  const NamedRouteByGetX({Key? key}) : super(key: key);

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
                child: Text("Go To Home Named"),
                onPressed: () async {
                  Get.toNamed('/home?name=Kurbanali');
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

class NamedRouteNavHome extends StatelessWidget {
  const NamedRouteNavHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // color: Colors.blueGrey,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "This is Home screen",
                style: TextStyle(fontSize: 20),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: Text("Back to Main"),
              ),
              Text("Params Value : ${Get.parameters['name']}"),
            ],
          ),
        ),
      ),
    );
  }
}

class UnkNownRoute extends StatelessWidget {
  const UnkNownRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Unknown Route found",
        style: TextStyle(fontSize: 23),
      ),
    );
  }
}
