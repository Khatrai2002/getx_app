import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NextScreen extends StatefulWidget {
  const NextScreen({Key? key}) : super(key: key);

  @override
  State<NextScreen> createState() => _NextScreenState();
}

class _NextScreenState extends State<NextScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("next screen"),
      ),
      body: Center(
          child:
          Text("${Get.parameters['somevalue']}",style:const TextStyle(color: Colors.red,fontSize: 20),)
      //      Text(
      //   "This is next screen",
        // style: TextStyle(color: Colors.red, fontSize: 30),
        
      // ),
      ),
      
    );
  }
}
