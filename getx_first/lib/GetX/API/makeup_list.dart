import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_first/GetX/API/makeup_list_controller.dart';

class MakeUpList extends StatelessWidget {
  MakeUpList({Key? key}) : super(key: key);

  MakeUpController _controller = Get.put(MakeUpController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Makeup List"),
      ),
      body: Obx(
        () {
          if (_controller.isLoading.value) {
            return CircularProgressIndicator();
          } else {
            return ListView.builder(
              itemCount: _controller.productList.length,
              itemBuilder: (ctx, index) {
                return Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 150,
                          height: 100,
                          margin: EdgeInsets.fromLTRB(16, 8, 8, 8),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.network(
                              _controller.productList[index].imageLink,
                              width: 150,
                              height: 100,
                              fit: BoxFit.fill,
                              color: Colors.purple,
                              colorBlendMode: BlendMode.color,
                            ),
                          ),
                        ),
                        Flexible(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                _controller.productList[index].name,
                                style: TextStyle(fontSize: 18),
                              ),
                              Text(
                                _controller.productList[index].brand,
                                style:
                                    TextStyle(fontSize: 14, color: Colors.grey),
                              ),
                              Text(
                                _controller.productList[index].category,
                                style:
                                    TextStyle(fontSize: 14, color: Colors.grey),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    Container(
                      color: Colors.grey[200],
                      height: 2,
                    )
                  ],
                );
              },
            );
          }
        },
      ),
    );
  }
}
