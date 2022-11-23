import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:grocery_app_and_website/api_files/modals/product_modal.dart';
import 'package:http/http.dart' as http;

class Api_Constants {
  static String baseUrl = 'https://fakestoreapi.com';
  static String usersEndpoint = '/products';
}

class Api_Service {
  Future<List<FakeStoreModal>?> fetch_Data() async {
    try {
      var url = Uri.parse(Api_Constants.baseUrl + Api_Constants.usersEndpoint);

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
