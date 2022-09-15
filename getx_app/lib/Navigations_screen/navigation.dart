import 'package:flutter/material.dart';

import 'package:get/get.dart';


class Navigations extends StatelessWidget {
  const Navigations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Naviigation"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
              child: ElevatedButton(
            onPressed: ()async {
              // Get.to(Home(),
              //     fullscreenDialog: true,
              //     transition: Transition.zoom,
              //     // duration: Duration(milliseconds: 4000),
              //      curve: Curves.bounceInOut
              //     );
              // Get.to(Home(),arguments: "Data from main");
              // var data=await Get.to(Home());
              // print("the receive the data is $data");
              Get.toNamed('/Home');
              // Get.toNamed('/Home?channel=Ripples code & content=Flutter GetX');
            },
            child:const Text("Go to Home"),
          ),),
        ],
      ),
    );
  }
}
