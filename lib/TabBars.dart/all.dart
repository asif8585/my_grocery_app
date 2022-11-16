import 'package:flutter/material.dart';
import 'package:grocery_app_and_website/TabBars.dart/Vegie_tab.dart';
import 'package:grocery_app_and_website/TabBars.dart/dairy_tab.dart';
import 'package:grocery_app_and_website/TabBars.dart/fruit_tab.dart';

class All_catagory extends StatelessWidget {
  const All_catagory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        fruit_tab(),
        dairy_tab(),
        vegitable_tab(),
      ],
    );
  }
}
