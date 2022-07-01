import 'dart:convert';

import 'package:http/http.dart' as http;


///http request helpers
class RequestHelper {
  ///GET request
  static Future<dynamic> getRequest(String url) async {
    http.Response response = await http.get(Uri.parse(url));
    try {
      var decodedData = jsonDecode(response.body);
      if (response.statusCode == 200) {
        return decodedData;
      } else {
        return 'CHECK Get Request failed';
      }
    } catch (e) {
      print(e);
    }
  }







}
