import 'package:ecommerce_app/data/models/trending_products.dart';
import 'package:http/http.dart' as http;

abstract class TrendingProductRepository {
  Future<List<TrendingProductparse>> getTrendingProducts();
}

class TrendingProductRepositoryImp extends TrendingProductRepository {
  @override
  Future<List<TrendingProductparse>> getTrendingProducts() async {
    var response = await http.get(Uri.parse(
        'https://bd.ezassist.me/ws/mpFeed?instanceName=bd.ezassist.me&opt=trendingProducts'));
    if (response.statusCode == 200) {
      List<TrendingProductparse> trendingProducts =
          trendingProductparseFromJson(response.body)[0];

      return trendingProducts;
    } else {
      throw Exception('Failed');
    }
  }
}
