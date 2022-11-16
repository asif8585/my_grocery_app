import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Cart_Page extends StatelessWidget {
  const Cart_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Cart",
        style: GoogleFonts.aBeeZee(fontSize: 27),
      ),
    );
  }
}
