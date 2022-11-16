import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class fruit_tab extends StatelessWidget {
  const fruit_tab({Key? key}) : super(key: key);

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
                  "assets/images/banana.png",
                ),
              ),
              Column(
                children: [
                  Text(
                    "Banana",
                    style: GoogleFonts.ubuntu(
                        fontWeight: FontWeight.w600,
                        color: Colors.blueGrey,
                        fontSize: 16),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "₹ 60/Dz",
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
          )),

          //other card

          Card(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 80,
                child: Image.asset(
                  "assets/images/apple.png",
                ),
              ),
              Column(
                children: [
                  Text(
                    "Apple",
                    style: GoogleFonts.ubuntu(
                        fontWeight: FontWeight.w600,
                        color: Colors.blueGrey,
                        fontSize: 16),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "₹ 100/kg",
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
