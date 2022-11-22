import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

class Product_Details extends StatefulWidget {
  Product_Details({Key? key}) : super(key: key);

  @override
  State<Product_Details> createState() => _Product_DetailsState();
}

class _Product_DetailsState extends State<Product_Details> {
  int _itemCount = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: Icon(
                      Icons.arrow_back_ios_new_outlined,
                      color: Colors.green,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.favorite_outline, color: Colors.green),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 200,
              child: Image.asset("assets/images/banana.png"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "Banana",
                    style: GoogleFonts.balooBhaijaan2(
                        fontSize: 25, fontWeight: FontWeight.w600),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.star_half_rounded,
                        color: Colors.yellow[800],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(
                          "4.5",
                          style: GoogleFonts.aBeeZee(
                              color: Colors.blueGrey,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        "(120)",
                        style: GoogleFonts.aBeeZee(color: Colors.blueGrey),
                      )
                    ],
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 5, 0, 0),
                  child: Text(
                    "₹ 60/Dz",
                    style: GoogleFonts.aBeeZee(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        color: Colors.black54),
                  ),
                ),
                Row(
                  children: <Widget>[
                    _itemCount != 1
                        ? ElevatedButton(
                            style: ButtonStyle(
                              shape: MaterialStatePropertyAll(
                                  CircleBorder(side: BorderSide.none)),
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.green),
                            ),
                            child: Icon(Icons.remove),
                            onPressed: () => setState(() => _itemCount--),
                          )
                        : new Container(),
                    // _itemCount < 1
                    //     ? IconButton(
                    //         onPressed: () {},
                    //         icon: Icon(
                    //           Icons.delete,
                    //           color: Colors.redAccent,
                    //         ))
                    //     : Container(),
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Text(
                        _itemCount.toString(),
                        style: GoogleFonts.aBeeZee(
                            color: Colors.black87,
                            fontSize: 25,
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                    ElevatedButton(
                        style: ButtonStyle(
                          shape: MaterialStatePropertyAll(
                            CircleBorder(side: BorderSide.none),
                          ),
                        ),
                        child: new Icon(
                          Icons.add,
                          size: 28,
                        ),
                        onPressed: () => setState(() => _itemCount++)),
                  ],
                )
              ],
            ),
            SizedBox(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  "A banana is an elongated, edible fruit – botanically a berry – produced by several kinds of large herbaceous flowering plants in the genus Musa. In some countries, bananas used for cooking may be called ,plantains, distinguishing them from dessert bananas.",
                  style: GoogleFonts.aBeeZee(fontSize: 16, color: Colors.grey),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.add_shopping_cart_outlined,
                      size: 30,
                      color: Colors.green,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
                  child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Checkout",
                        style: TextStyle(fontSize: 18),
                      )),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
