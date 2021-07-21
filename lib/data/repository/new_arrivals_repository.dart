import 'package:ecommerce_app/data/models/new_arrivals.dart';
import 'package:http/http.dart' as http;

abstract class NewArrivalRepository {
  Future<List<NewArrivalParse>> getNewArrivals();
}

class NewArrivalRepositoryImp extends NewArrivalRepository {
  @override
  Future<List<NewArrivalParse>> getNewArrivals() async {
    var response = await http.get(Uri.parse(
        'https://bd.ezassist.me/ws/mpFeed?instanceName=bd.ezassist.me&opt=newArrivals'));
    if (response.statusCode == 200) {
      List<NewArrivalParse> newArrivals =
          newArrivalParseFromJson(response.body)[0];

      return newArrivals;
    } else {
      throw Exception('Failed');
    }
  }
}
