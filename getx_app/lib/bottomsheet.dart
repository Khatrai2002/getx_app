import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Bottomsheets extends StatefulWidget {
  const Bottomsheets({Key? key}) : super(key: key);

  @override
  State<Bottomsheets> createState() => _BottomsheetsState();
}

class _BottomsheetsState extends State<Bottomsheets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bottom sheet"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
              child: ElevatedButton(
            onPressed: () {
              Get.bottomSheet(
                  Wrap(
                    children: <Widget>[
                      ListTile(
                        leading: const Icon(Icons.wb_sunny_outlined),
                        title: const Text("Light theme"),
                        onTap: () => {Get.changeTheme(ThemeData.light())},
                      ),
                      ListTile(
                        leading: const Icon(Icons.wb_sunny),
                        title: const Text("Dark theme"),
                        onTap: () => {Get.changeTheme(ThemeData.dark())},
                      )
                    ],
                  ),
                  barrierColor: Colors.greenAccent.shade100,
                  backgroundColor: Colors.purple,
                  // isDismissible: false
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.00),
                      side: const BorderSide(
                          color: Colors.white,
                          style: BorderStyle.solid,
                          width: 2.0)),
                  enableDrag: false);
            },
            child: const Text("Bottom sheet"),
          ))
        ],
      ),
    );
  }
}
