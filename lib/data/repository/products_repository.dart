import 'package:ecommerce_app/data/models/Products.dart';
import 'package:http/http.dart' as http;

abstract class ProductRepository {
  Future<List<ProductParse>> getProducts();
}

class ProductRepositoryImp extends ProductRepository {
  @override
  Future<List<ProductParse>> getProducts() async {
    var response = await http.get(Uri.parse(
        'https://bd.ezassist.me/ws/mpFeed?instanceName=bd.ezassist.me&opt=stories'));
    if (response.statusCode == 200) {
      List<ProductParse> products = productParseFromJson(response.body)[0];

      return products;
    } else {
      throw Exception('Failed');
    }
  }
}
