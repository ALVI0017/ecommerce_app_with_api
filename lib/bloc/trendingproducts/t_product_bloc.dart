// Connect the data to UI
// update UI when state chnage
// bridge between UI and bloc

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:ecommerce_app/bloc/trendingproducts/t_product_event.dart';
import 'package:ecommerce_app/bloc/trendingproducts/t_product_state.dart';
import 'package:ecommerce_app/data/models/trending_products.dart';
import 'package:ecommerce_app/data/repository/trending_prodct_repository.dart';

class T_ProductBloc extends Bloc<T_ProductEvent, T_ProductState> {
  TrendingProductRepository repository;

  T_ProductBloc({@required this.repository}) : super(null);

  T_ProductState get initialState => T_ProductInitialState();
  @override
  Stream<T_ProductState> mapEventToState(T_ProductEvent event) async* {
    if (event is FetchT_Product) {
      yield T_ProductLoadingState();

      try {
        List<TrendingProductparse> t_products =
            await repository.getTrendingProducts();
        yield T_ProductLoadedState(t_products: t_products);
      } catch (e) {
        yield T_ProductErrorState(message: e.toString());
      }
    }
  }
}
