import 'package:getx_first/GetX/API/Model.dart';
import 'package:getx_first/GetX/API/api_constants.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static var client = http.Client();

  static Future<List<ProductModel>> fetchProducts() async {
    var response = await client.get(Uri.parse(WS_MEKUP));

    if (response.statusCode == 200) {
      var jsonString = response.body;

      return productModelFromJson(jsonString);
    }
    return [];
  }
}
