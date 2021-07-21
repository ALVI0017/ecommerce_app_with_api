import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:ecommerce_app/data/models/trending_products.dart';

//  4 states
// Inital state no data present
// Laoding state
//Loaded state
// error state
abstract class T_ProductState extends Equatable {}

class T_ProductInitialState extends T_ProductState {
  @override
  List<Object> get props => [];
}

class T_ProductLoadingState extends T_ProductState {
  @override
  List<Object> get props => [];
}

class T_ProductLoadedState extends T_ProductState {
  List<TrendingProductparse> t_products;
  T_ProductLoadedState({@required this.t_products});
  @override
  List<Object> get props => null;
}

class T_ProductErrorState extends T_ProductState {
  String message;
  T_ProductErrorState({@required this.message});
  @override
  List<Object> get props => null;
}
