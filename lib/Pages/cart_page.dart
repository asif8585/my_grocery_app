import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Cart_Page extends StatefulWidget {
  @override
  State<Cart_Page> createState() => _Cart_PageState();
}

class _Cart_PageState extends State<Cart_Page> {
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
