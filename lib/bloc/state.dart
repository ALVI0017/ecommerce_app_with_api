import 'package:ecommerce_app/data/models/Products.dart';
import 'package:ecommerce_app/data/models/new_arrivals.dart';
import 'package:ecommerce_app/data/models/new_shops.dart';
import 'package:ecommerce_app/data/models/trending_products.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:ecommerce_app/data/models/trending_sellers.dart';

//  4 states
// Inital state no data present
// Laoding state
//Loaded state
// error state
abstract class X_State extends Equatable {}

class InitialState extends X_State {
  @override
  List<Object> get props => [];
}

class LoadingState extends X_State {
  @override
  List<Object> get props => [];
}

// Arrivals

class N_arrivalLoadedState extends X_State {
  List<NewArrivalParse> n_arrivals;
  N_arrivalLoadedState({@required this.n_arrivals});
  @override
  List<Object> get props => null;
}

class N_arrivalErrorState extends X_State {
  String message;
  N_arrivalErrorState({@required this.message});
  @override
  List<Object> get props => null;
}

// New shops
class N_shopLoadedState extends X_State {
  List<NewShopParse> n_shops;
  N_shopLoadedState({@required this.n_shops});
  @override
  List<Object> get props => null;
}

class N_shopErrorState extends X_State {
  String message;
  N_shopErrorState({@required this.message});
  @override
  List<Object> get props => null;
}

//products
class ProductLoadedState extends X_State {
  List<ProductParse> products;
  ProductLoadedState({@required this.products});
  @override
  List<Object> get props => null;
}

class ProductErrorState extends X_State {
  String message;
  ProductErrorState({@required this.message});
  @override
  List<Object> get props => null;
}

// Trending products

class T_ProductLoadedState extends X_State {
  List<TrendingProductparse> t_products;
  T_ProductLoadedState({@required this.t_products});
  @override
  List<Object> get props => null;
}

class T_ProductErrorState extends X_State {
  String message;
  T_ProductErrorState({@required this.message});
  @override
  List<Object> get props => null;
}

// trending T_Seller

class T_SellerLoadedState extends X_State {
  List<TrendingSellerparse> t_sellers;
  T_SellerLoadedState({@required this.t_sellers});
  @override
  List<Object> get props => null;
}

class T_SellerErrorState extends X_State {
  String message;
  T_SellerErrorState({@required this.message});
  @override
  List<Object> get props => null;
}
