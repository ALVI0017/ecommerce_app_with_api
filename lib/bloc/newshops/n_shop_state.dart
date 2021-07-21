import 'package:ecommerce_app/data/models/new_arrivals.dart';
import 'package:ecommerce_app/data/models/new_shops.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:ecommerce_app/data/models/trending_sellers.dart';

//  4 states
// Inital state no data present
// Laoding state
//Loaded state
// error state
abstract class N_shopState extends Equatable {}

class N_shopInitialState extends N_shopState {
  @override
  List<Object> get props => [];
}

class N_shopLoadingState extends N_shopState {
  @override
  List<Object> get props => [];
}

class N_shopLoadedState extends N_shopState {
  List<NewShopParse> n_shops;
  N_shopLoadedState({@required this.n_shops});
  @override
  List<Object> get props => null;
}

class N_shopErrorState extends N_shopState {
  String message;
  N_shopErrorState({@required this.message});
  @override
  List<Object> get props => null;
}
