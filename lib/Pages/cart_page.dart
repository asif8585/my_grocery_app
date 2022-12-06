import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_app_and_website/api_files/modals/cart_modal.dart';
import 'package:grocery_app_and_website/api_files/services/http_service.dart';

class Cart_Page extends StatefulWidget {
  @override
  State<Cart_Page> createState() => _Cart_PageState();
}

class _Cart_PageState extends State<Cart_Page> {
  late List<CartModal>? _myCartModal = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getCartData();
  }

  void _getCartData() async {
    _myCartModal = (await Cart_Api_Service().fetch_Cart_Data());
    Future.delayed(const Duration(milliseconds: 500))
        .then((value) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: _myCartModal == null || _myCartModal!.isEmpty
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: _myCartModal!.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: Column(children: [
                      Text(_myCartModal![index].id.toString()),
                      // Text(
                      //     _myCartModal![index].)
                    ]),
                  );
                },
              ));
  }
}
