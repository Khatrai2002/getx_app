

import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

import 'bottomsheet.dart';
import 'Navigations_screen/home.dart';
import 'Navigations_screen/navigation.dart';
import 'Navigations_screen/nextscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      title: 'SnackBar',
      // home: Dialogboxx(),
      // home:Snackbar(),
      // home: Bottomsheets(),
      // home: Navigations(),
      initialRoute: '/',
      defaultTransition: Transition.zoom,
      getPages: [
        // GetPage(name: '/', page: ()=>MyApp()),
        GetPage(name: '/', page: ()=>Navigations()),
        GetPage(name: '/Home', page: ()=>Home()),
        // GetPage(name: '/nextscreen', page: ()=>NextScreen(),transition: Transition.leftToRight),
        GetPage(name: '/nextscreen/:somevalue', page: ()=>NextScreen(),transition: Transition.leftToRight),
        


      ],
    );
  }
}
