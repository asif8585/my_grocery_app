import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class vegitable_tab extends StatelessWidget {
  const vegitable_tab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Card(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 80,
                child: Image.asset(
                  "assets/images/corn.png",
                ),
              ),
              Column(
                children: [
                  Text(
                    "Sweet Corn",
                    style: GoogleFonts.ubuntu(
                        fontWeight: FontWeight.w600,
                        color: Colors.blueGrey,
                        fontSize: 16),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "₹ 50/kg",
                      style: GoogleFonts.ubuntu(
                          fontWeight: FontWeight.w700,
                          color: Colors.blueGrey,
                          fontSize: 15),
                    ),
                  )
                ],
              ),
              ElevatedButton(
                  onPressed: () {},
                  child: Icon(Icons.add_shopping_cart_outlined))
            ],
          ))
        ],
      ),
    );
  }
}
