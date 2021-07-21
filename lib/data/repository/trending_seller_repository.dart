import 'package:ecommerce_app/data/models/trending_sellers.dart';
import 'package:http/http.dart' as http;

abstract class TrendingSellerRepository {
  Future<List<TrendingSellerparse>> getTrendingSellers();
}

class TrendingSellerRepositoryImp extends TrendingSellerRepository {
  @override
  Future<List<TrendingSellerparse>> getTrendingSellers() async {
    var response = await http.get(Uri.parse(
        'https://bd.ezassist.me/ws/mpFeed?instanceName=bd.ezassist.me&opt=trending_seller'));
    if (response.statusCode == 200) {
      List<TrendingSellerparse> trendingSellers =
          trendingSellerparseFromJson(response.body)[0];

      return trendingSellers;
    } else {
      throw Exception('Failed');
    }
  }
}
