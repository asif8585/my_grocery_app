import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Search_TextFormField extends StatelessWidget {
  const Search_TextFormField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                  prefixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.search,
                      color: Color.fromARGB(255, 105, 116, 122),
                    ),
                  ),
                  suffixIcon: Image.asset("assets/images/grid2.png"),
                  hintText: "Search Grocery",
                  hintStyle:
                      GoogleFonts.balooBhaijaan2(fontWeight: FontWeight.w500),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(),
                      borderRadius: BorderRadius.circular(8))),
            ),
          ),
        ),
      ],
    );
  }
}
