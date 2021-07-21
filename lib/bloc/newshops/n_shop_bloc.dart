import 'package:ecommerce_app/data/models/new_shops.dart';
import 'package:ecommerce_app/data/repository/new_shops_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'n_shop_event.dart';
import 'n_shop_state.dart';

class N_shopBloc extends Bloc<N_shopEvent, N_shopState> {
  NewshopRepository repository;

  N_shopBloc({@required this.repository}) : super(null);

  N_shopState get initialState => N_shopInitialState();
  @override
  Stream<N_shopState> mapEventToState(N_shopEvent event) async* {
    if (event is FetchN_shop) {
      yield N_shopLoadingState();

      try {
        List<NewShopParse> n_shops = await repository.getNewshops();
        yield N_shopLoadedState(n_shops: n_shops);
      } catch (e) {
        yield N_shopErrorState(message: e.toString());
      }
    }
  }
}
