import 'package:flutter/material.dart';
import 'package:grocery_app_and_website/App_Screens/Home_Screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_app_and_website/App_Screens/navBar/Bottom_NavBar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Bottom_NavBar();
    // return Scaffold(
    //   // bottomNavigationBar: Bottom_NavBar(),
    //   appBar: AppBar(
    //       title: Text(
    //     "Grocery App",
    //     style: GoogleFonts.aBeeZee(),
    //   )),
    //   body: Home_screen(),
    // );
  }
}
