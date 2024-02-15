import 'dart:convert';

import 'package:getx_api/model/datamodel.dart';
import 'package:http/http.dart' as http;

class DataServices {
  var url = 'https://fakestoreapi.com/products/1';

 Future<DataModel?> getService() async {
    var response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      var data = await json.decode(response.body);
      return DataModel.fromJson(data);
    } else {}
  }
}
