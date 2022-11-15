import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_app_and_website/App_Screens/3_cart_ka_item_card.dart';

class tab1 extends StatefulWidget {
  const tab1({Key? key}) : super(key: key);

  @override
  State<tab1> createState() => _tab1State();
}

class _tab1State extends State<tab1> {
  String item_name_text = "Fruit basket";

  String item_price = "₹200";

  int _itemCount = 1;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(6.0),
            child: Card(
              shadowColor: Colors.green,
              elevation: 10,
              color: Color.fromARGB(255, 233, 249, 216),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: ListTile(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 70,
                        child: Image(
                          image: AssetImage("assets/images/Fruits_basket.png"),
                        ),
                      ),
                    ],
                  ),
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Text(
                              item_name_text,
                              style: GoogleFonts.aBeeZee(
                                  color: Color.fromARGB(248, 36, 81, 28),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18),
                            ),
                          ),
                          Text(
                            item_price,
                            style: GoogleFonts.teko(
                                fontWeight: FontWeight.w700,
                                fontSize: 19,
                                color: Colors.black54),
                          ),
                        ],
                      ),

                      // buttons card for increment decrement and delete
                      Column(children: [
                        Card(
                          color: Color.fromARGB(255, 211, 238, 180),
                          elevation: 8,
                          child: Row(
                            children: <Widget>[
                              _itemCount != 0
                                  ? new IconButton(
                                      icon: new Icon(Icons.remove),
                                      onPressed: () =>
                                          setState(() => _itemCount--),
                                    )
                                  : new Container(),
                              _itemCount < 1
                                  ? IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.delete,
                                        color: Colors.redAccent,
                                      ))
                                  : Container(),
                              Text(
                                _itemCount.toString(),
                                style: GoogleFonts.aBeeZee(),
                              ),
                              IconButton(
                                  icon: new Icon(Icons.add),
                                  onPressed: () =>
                                      setState(() => _itemCount++)),
                            ],
                          ),
                        ),
                      ])
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
