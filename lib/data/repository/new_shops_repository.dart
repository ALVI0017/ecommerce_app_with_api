import 'package:ecommerce_app/data/models/new_shops.dart';
import 'package:http/http.dart' as http;

abstract class NewshopRepository {
  Future<List<NewShopParse>> getNewshops();
}

class NewshopRepositoryImp extends NewshopRepository {
  @override
  Future<List<NewShopParse>> getNewshops() async {
    var response = await http.get(Uri.parse(
        'https://bd.ezassist.me/ws/mpFeed?instanceName=bd.ezassist.me&opt=newShops'));
    if (response.statusCode == 200) {
      List<NewShopParse> newshops = newShopParseFromJson(response.body)[0];

      return newshops;
    } else {
      throw Exception('Failed');
    }
  }
}
