import 'package:ecommerce_app/bloc/event.dart';
import 'package:ecommerce_app/data/models/Products.dart';
import 'package:ecommerce_app/data/models/new_arrivals.dart';
import 'package:ecommerce_app/data/models/new_shops.dart';
import 'package:ecommerce_app/data/models/trending_products.dart';
import 'package:ecommerce_app/data/models/trending_sellers.dart';
import 'package:ecommerce_app/data/repository/new_arrivals_repository.dart';
import 'package:ecommerce_app/data/repository/new_shops_repository.dart';
import 'package:ecommerce_app/data/repository/products_repository.dart';
import 'package:ecommerce_app/data/repository/trending_prodct_repository.dart';
import 'package:ecommerce_app/data/repository/trending_seller_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ecommerce_app/bloc/state.dart';

// new arrivals
class N_arrivalBloc extends Bloc<Event, X_State> {
  NewArrivalRepository repository;

  N_arrivalBloc({@required this.repository}) : super(null);

  X_State get initialState => InitialState();
  @override
  Stream<X_State> mapEventToState(Event event) async* {
    if (event is FetchData) {
      yield LoadingState();

      try {
        List<NewArrivalParse> n_arrivals = await repository.getNewArrivals();
        yield N_arrivalLoadedState(n_arrivals: n_arrivals);
      } catch (e) {
        yield N_arrivalErrorState(message: e.toString());
      }
    }
  }
}


// New shops
class N_shopBloc extends Bloc<Event, X_State> {
  NewshopRepository repository;

  N_shopBloc({@required this.repository}) : super(null);

  X_State get initialState =>InitialState();
  @override
  Stream<X_State> mapEventToState(Event event) async* {
    if (event is FetchData) {
      yield LoadingState();

      try {
        List<NewShopParse> n_shops = await repository.getNewshops();
        yield N_shopLoadedState(n_shops: n_shops);
      } catch (e) {
        yield N_shopErrorState(message: e.toString());
      }
    }
  }
}
// product
class ProductBloc extends Bloc<Event, X_State> {
  ProductRepository repository;

  ProductBloc({@required this.repository}) : super(null);

  X_State get initialState => InitialState();
  @override
  Stream<X_State> mapEventToState(Event event) async* {
    if (event is FetchData) {
      yield LoadingState();
      try {
        List<ProductParse> products = await repository.getProducts();
        yield ProductLoadedState(products: products);
      } catch (e) {
        yield ProductErrorState(message: e.toString());
      }
    }
  }
}

// Trending product
class T_ProductBloc extends Bloc<Event, X_State> {
  TrendingProductRepository repository;

  T_ProductBloc({@required this.repository}) : super(null);

  X_State get initialState => InitialState();
  @override
  Stream<X_State> mapEventToState(Event event) async* {
    if (event is FetchData) {
      yield LoadingState();

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

// trending sellers
class T_SellerBloc extends Bloc<Event, X_State> {
  TrendingSellerRepository repository;

  T_SellerBloc({@required this.repository}) : super(null);

  X_State get initialState => InitialState();
  @override
  Stream<X_State> mapEventToState(Event event) async* {
    if (event is FetchData) {
      yield LoadingState();

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



