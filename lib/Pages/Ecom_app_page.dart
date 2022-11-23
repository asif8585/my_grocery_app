import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_app_and_website/api_files/modals/product_modal.dart';
import 'package:grocery_app_and_website/api_files/services/http_service.dart';

class Ecom_demo_Page extends StatefulWidget {
  @override
  State<Ecom_demo_Page> createState() => _Ecom_demo_PageState();
}

class _Ecom_demo_PageState extends State<Ecom_demo_Page> {
  late List<FakeStoreModal>? _userModal = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getData();
  }

  void _getData() async {
    _userModal = (await Api_Service().fetch_Data());
    Future.delayed(const Duration(milliseconds: 500))
        .then((value) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: _userModal == null || _userModal!.isEmpty
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: _userModal!.length,
              itemBuilder: (context, index) {
                return Card(
                  surfaceTintColor: Colors.teal,
                  elevation: 5,
                  child: Column(
                    children: [
                      Column(
                        // mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Item No.",
                                style: GoogleFonts.aBeeZee(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.teal[800]),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  _userModal![index].id.toString(),
                                  style: GoogleFonts.aBeeZee(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w800,
                                      color: Colors.teal[800]),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              _userModal![index].category.toString(),
                              style: GoogleFonts.aBeeZee(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black54),
                            ),
                          ),
                        ],
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            child: Image.network(
                                _userModal![index].image.toString()),
                            height: 200,
                          ),
                          Row(
                            children: [
                              Text(
                                "Price (\$):",
                                style: GoogleFonts.aBeeZee(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.teal[900]),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Text(
                                  _userModal![index].price.toString(),
                                  style: GoogleFonts.aBeeZee(
                                      fontSize: 23,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.teal[800]),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          _userModal![index].description.toString(),
                          style: GoogleFonts.aBeeZee(
                              fontSize: 15,
                              fontWeight: FontWeight.w300,
                              color: Colors.teal[700]),
                        ),
                      ),

                      // Text(_userModal![index].rating.toString()),
                    ],
                  ),
                );
              },
            ),
    );
  }
}
