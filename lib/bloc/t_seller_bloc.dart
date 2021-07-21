// Connect the data to UI
// update UI when state chnage
// bridge between UI and bloc

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:ecommerce_app/bloc/t_seller_event.dart';
import 'package:ecommerce_app/bloc/t_seller_state.dart';
import 'package:ecommerce_app/data/models/trending_sellers.dart';
import 'package:ecommerce_app/data/repository/trending_seller_repository.dart';

class T_SellerBloc extends Bloc<T_SellerEvent, T_SellerState> {
  TrendingSellerRepository repository;

  T_SellerBloc({@required this.repository}) : super(null);

  T_SellerState get initialState => T_SellerInitialState();
  @override
  Stream<T_SellerState> mapEventToState(T_SellerEvent event) async* {
    if (event is FetchT_Seller) {
      yield T_SellerLoadingState();

      try {
        List<TrendingSellerparse> t_seller =
            await repository.getTrendingSellers();
        yield T_SellerLoadedState(t_sellers: t_seller);
      } catch (e) {
        yield T_SellerErrorState(message: e.toString());
      }
    }
  }
}
