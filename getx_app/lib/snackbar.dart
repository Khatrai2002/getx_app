

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Snackbar extends StatefulWidget {
  const Snackbar({Key? key}) : super(key: key);

  @override
  State<Snackbar> createState() => _SnackbarState();
}

class _SnackbarState extends State<Snackbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("snackbar"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                Get.snackbar("Snakbar Title", "This will be snakbar message",
                    snackPosition: SnackPosition.BOTTOM,
                    titleText: const Text("Another Text"),
                    messageText: const Text(
                      "Another Text",
                      style: TextStyle(color: Colors.white),
                    ),
                    colorText: Colors.red,
                    backgroundColor: Colors.black,
                    borderRadius: 30,
                    margin: const EdgeInsets.all(10),
                    maxWidth: 100,
                    animationDuration: const Duration(milliseconds: 3000),
                    backgroundGradient: const LinearGradient(
                        colors: [Colors.red, Colors.green]),
                    borderColor: Colors.purple,
                    borderWidth: 3,
                    boxShadows: const [
                      BoxShadow(
                          color: Colors.yellow,
                          offset: Offset(30, 50),
                          blurRadius: 8)
                    ],
                    isDismissible: true,
                    // dismissDirection: SnackDismissDirection.HORIZONTAL,
                    forwardAnimationCurve: Curves.bounceInOut,
                    duration: const Duration(milliseconds: 8000),
                    icon: const Icon(
                      Icons.send,
                      color: Colors.white,
                    ),
                    leftBarIndicatorColor: Colors.white,
                    mainButton: TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Retry",
                        )),
                    onTap: (val) {
                      print("Snakbar clicked");
                    },
                    overlayBlur: 5,
                    overlayColor: Colors.grey,
                    padding: const EdgeInsets.all(50),
                    showProgressIndicator: true,
                    progressIndicatorBackgroundColor: Colors.deepOrange,
                    progressIndicatorValueColor:
                        const AlwaysStoppedAnimation<Color>(Colors.white),
                    reverseAnimationCurve: Curves.bounceInOut,
                    snackbarStatus: (val) {
                      print(val);
                    },
                    userInputForm: Form(
                        child: Row(
                      children: const [Expanded(child: TextField())],
                    )));
              },
              child: const Text("show snakbar"),
            ),
          ),
        ],
      ),
    );
  }
}
