import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:grocery_app_and_website/App_Screens/Home_Screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_app_and_website/App_Screens/navBar/Bottom_NavBar.dart';
import 'package:grocery_app_and_website/Pages/product_detail_page.dart';
import 'package:introduction_screen/introduction_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(
    //     SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return GetMaterialApp(
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page: (() => MyApp())),
        GetPage(
            name: "/product_detail_page",
            page: (() => Product_Details()),
            transition: Transition.downToUp),
      ],
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.light(useMaterial3: true),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Bottom_NavBar();
  }
}
