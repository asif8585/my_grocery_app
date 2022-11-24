import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:grocery_app_and_website/api_files/modals/cart_modal.dart';
import 'package:grocery_app_and_website/api_files/modals/product_modal.dart';
import 'package:http/http.dart' as http;

class Api_Constants {
  static String baseUrl = 'https://fakestoreapi.com';
  static String allProducts = '/products';
  static String catagories = '/products/categories';
  static String cart = "/carts";
}

class Api_Service {
  Future<List<FakeStoreModal>?> fetch_Data() async {
    try {
      var url = Uri.parse(Api_Constants.baseUrl + Api_Constants.allProducts);

      var response = await http.get(url);
      if (response.statusCode == 200) {
        List<FakeStoreModal> _model = fakeStoreModalFromJson(response.body);
        return _model;
        // print(_model);
      }
    } catch (e) {
      log(e.toString());
    }
  }
}

void fetch_catagory_Data() async {
  var dio = Dio();
  var response =
      await dio.get(Api_Constants.baseUrl + Api_Constants.catagories);
  print(response.data.toString());
}

// void fetch_cart_data() async {
//   var dio = Dio();
//   var response = await dio.get(Api_Constants.baseUrl + Api_Constants.cart);
//   print(response.data.toString());
// }

class fetch_cart {
  Future<List<CartModal>?> fetch_Cart_data() async {
    var dio = Dio();
    var response = await dio.get(Api_Constants.baseUrl + Api_Constants.cart);
    if (response.statusCode == 200) {
      List<CartModal> _cart_modal = cartModalFromJson(response.data);

      // print(response.data.toString());
      return _cart_modal;
    }
  }
}
