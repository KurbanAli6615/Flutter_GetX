import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RouteNavigationUnNamed extends StatelessWidget {
  const RouteNavigationUnNamed({Key? key}) : super(key: key);

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
                child: Text("Go To Home"),
                onPressed: () async {
                  var popData = await Get.to(
                    RouteNavvigationHomeScreen(),
                    fullscreenDialog: true,
                    transition: Transition.zoom,
                    duration: Duration(seconds: 2),
                    curve: Curves.bounceInOut,
                    arguments: "Push Data",
                  );
                  print(popData);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

class RouteNavvigationHomeScreen extends StatelessWidget {
  const RouteNavvigationHomeScreen({Key? key}) : super(key: key);

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
              Text(
                "This is Home screen",
                style: TextStyle(fontSize: 20),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text("Next Screen"),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.back(result: "Pop data");
                },
                child: Text("Back to Main"),
              ),
              Text("${Get.arguments}"),
            ],
          ),
        ),
      ),
    );
  }
}
