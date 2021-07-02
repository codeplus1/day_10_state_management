import 'dart:convert';

import 'package:day_10_state_management/const/const.dart';
import 'package:http/http.dart' as http;

class Api {
  // Get Data
  Future getData(String endpoint) async {
    var response = await http.get(Uri.parse(baseURL + endpoint),
        headers: {'Accept': 'application/json'});
    return response;
  }

  // Post Data
  Future postData(Map data, String endPoint) async {
    var response = await http.post(Uri.parse(baseURL + endPoint),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
        body: jsonEncode(data));
    return response;
  }
}
