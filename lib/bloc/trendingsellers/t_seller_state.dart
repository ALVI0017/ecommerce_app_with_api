import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:ecommerce_app/data/models/trending_sellers.dart';

//  4 states
// Inital state no data present
// Laoding state
//Loaded state
// error state
abstract class T_SellerState extends Equatable {}

class T_SellerInitialState extends T_SellerState {
  @override
  List<Object> get props => [];
}

class T_SellerLoadingState extends T_SellerState {
  @override
  List<Object> get props => [];
}

class T_SellerLoadedState extends T_SellerState {
  List<TrendingSellerparse> t_sellers;
  T_SellerLoadedState({@required this.t_sellers});
  @override
  List<Object> get props => null;
}

class T_SellerErrorState extends T_SellerState {
  String message;
  T_SellerErrorState({@required this.message});
  @override
  List<Object> get props => null;
}
