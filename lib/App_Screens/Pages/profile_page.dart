import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile_Page extends StatelessWidget {
  const Profile_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Profile",
        style: GoogleFonts.aBeeZee(fontSize: 27),
      ),
    );
  }
}
