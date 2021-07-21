import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:ecommerce_app/data/models/Products.dart';

//  4 states
// Inital state no data present
// Laoding state
//Loaded state
// error state
abstract class ProductState extends Equatable {}

class ProductInitialState extends ProductState {
  @override
  List<Object> get props => [];
}

class ProductLoadingState extends ProductState {
  @override
  List<Object> get props => [];
}

class ProductLoadedState extends ProductState {
  List<ProductParse> products;
  ProductLoadedState({@required this.products});
  @override
  List<Object> get props => null;
}

class ProductErrorState extends ProductState {
  String message;
  ProductErrorState({@required this.message});
  @override
  List<Object> get props => null;
}
