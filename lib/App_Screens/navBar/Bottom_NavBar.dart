import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_app_and_website/App_Screens/Home_Screen.dart';
import 'package:grocery_app_and_website/Pages/cart_page.dart';
import 'package:grocery_app_and_website/Pages/profile_page.dart';

class Bottom_NavBar extends StatefulWidget {
  Bottom_NavBar({Key? key}) : super(key: key);

  @override
  State<Bottom_NavBar> createState() => _Bottom_NavBarState();
}

class _Bottom_NavBarState extends State<Bottom_NavBar> {
  int myIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    SafeArea(child: Home_screen()),
    Cart_Page(),
    Profile_Page(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        "Grocery_Mart",
        style: GoogleFonts.aBeeZee(fontWeight: FontWeight.w700),
      )),
      body: Center(
        child: _widgetOptions.elementAt(myIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.green,
          selectedItemColor: Colors.black87,
          unselectedItemColor: Colors.white,
          onTap: (index) {
            setState(() {
              myIndex = index;
            });
          },
          currentIndex: myIndex,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), label: "Cart"),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle), label: "Account"),
          ]),
    );
  }
}
