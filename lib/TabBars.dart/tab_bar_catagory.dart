import 'package:flutter/material.dart';
import 'package:grocery_app_and_website/App_Screens/Home_Screen.dart';
import 'package:grocery_app_and_website/TabBars.dart/Cart_Fruits_Tab.dart';
import 'package:grocery_app_and_website/TabBars.dart/Vegie_tab.dart';
import 'package:grocery_app_and_website/TabBars.dart/all.dart';
import 'package:grocery_app_and_website/TabBars.dart/dairy_tab.dart';
import 'package:grocery_app_and_website/TabBars.dart/fruit_tab.dart';

class Catagory_Tabs extends StatefulWidget {
  const Catagory_Tabs({Key? key}) : super(key: key);

  @override
  State<Catagory_Tabs> createState() => _Catagory_TabsState();
}

class _Catagory_TabsState extends State<Catagory_Tabs>
    with SingleTickerProviderStateMixin {
  late TabController myTabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    myTabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            DefaultTabController(
              length: 4,
              child: TabBar(
                controller: myTabController,
                tabs: [
                  Text(
                    "All",
                    style: TextStyle(fontSize: 16, color: Colors.black38),
                  ),
                  Text(
                    "Fruits",
                    style: TextStyle(fontSize: 16, color: Colors.black38),
                  ),
                  Text(
                    "Veg",
                    style: TextStyle(fontSize: 16, color: Colors.black38),
                  ),
                  Text(
                    "Dairy",
                    style: TextStyle(fontSize: 16, color: Colors.black38),
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: myTabController,
                children: [
                  All_catagory(),
                  fruit_tab(),
                  vegitable_tab(),
                  dairy_tab(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
