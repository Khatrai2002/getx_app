import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Center(
            child: Text(
              "This is home screen",
              style: TextStyle(color: Colors.purpleAccent, fontSize: 25),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Center(
              child: ElevatedButton(
            onPressed: () {
              //  Get.toNamed('/nextscreen');
              Get.toNamed('/nextscreen/1234');
            },
   
            child: const Text(
              "Next Screen",
              style: TextStyle(fontSize: 18),
            ),
          )),
          const SizedBox(
            height: 8,
          ),
          Center(
              child: ElevatedButton(
            onPressed: () {
              // Get.back();
              Get.back(result: "This is home screen");
            },
           
            child: const Text(
              "Back to Main",
              style: TextStyle(fontSize: 18),
            ),
          )),
          // SizedBox(height: 8,),
          // Center(child: Text("${Get.arguments}",style: TextStyle(color: Colors.green,fontSize: 20),))
          // Text("Channel name is ${Get.parameters['channel']} and content is ${Get.parameters['content']}")
        ],
      ),
    );
  }
}
