import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Dialogbox extends StatefulWidget {
  const Dialogbox({Key? key}) : super(key: key);

  @override
  State<Dialogbox> createState() => DialogboxState();
}

class DialogboxState extends State<Dialogbox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dialog"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
              child: ElevatedButton(
            onPressed: () {
              // Get.defaultDialog();
              Get.defaultDialog(
                  title: "Dialog Title",
                  titleStyle: const TextStyle(fontSize: 25),
                  middleText: "This is middle text",
                  middleTextStyle: const TextStyle(fontSize: 20),
                  backgroundColor: Colors.purple,
                  radius: 80,
                  content: Row(
                    children: const [
                      CircularProgressIndicator(),
                      SizedBox(
                        width: 16,
                      ),
                      Expanded(child: Text("Data Loading"))
                    ],
                  ),
                  textCancel: "Cancel",
                  cancelTextColor: Colors.white,
                  textConfirm: "Confirm",
                  confirmTextColor: Colors.white,
                  onCancel: () {},
                  onConfirm: () {},
                  buttonColor: Colors.green,
                  cancel: const Text(
                    "Cancel",
                    style: TextStyle(color: Colors.white),
                  ),
                  actions: [
                    ElevatedButton(
                      onPressed: () {
                        Get.back();
                      },
                      child: const Text("Action-1"),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text("Action-2"),
                    )
                  ],
                  barrierDismissible: false,
                  confirm: const Text(
                    "Confirm",
                    style: TextStyle(color: Colors.white),
                  ));
            },
            child: const Text("show dialog"),
          ))
        ],
      ),
    );
  }
}
