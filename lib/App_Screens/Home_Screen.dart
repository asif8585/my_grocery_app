import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_app_and_website/TabBars.dart/tab_bar_catagory.dart';
import 'package:grocery_app_and_website/App_Screens/search_grocey.dart';

class Home_screen extends StatelessWidget {
  const Home_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text(
                    "Hello,",
                    style: GoogleFonts.aBeeZee(
                        color: Color.fromARGB(255, 142, 135, 135),
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "Sudhanshu Nandal",
                    style: GoogleFonts.aBeeZee(
                        color: Colors.green,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              Image.asset(
                "assets/images/avatar.png",
                width: 60,
              )
            ],
          ),

          //search textform field row here

          Search_TextFormField(),
          Catagory_Tabs(),
        ],
      ),
    );
    ;
  }
}
