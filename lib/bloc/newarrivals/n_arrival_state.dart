import 'package:ecommerce_app/data/models/new_arrivals.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:ecommerce_app/data/models/trending_sellers.dart';

//  4 states
// Inital state no data present
// Laoding state
//Loaded state
// error state
abstract class N_arrivalState extends Equatable {}

class N_arrivalInitialState extends N_arrivalState {
  @override
  List<Object> get props => [];
}

class N_arrivalLoadingState extends N_arrivalState {
  @override
  List<Object> get props => [];
}

class N_arrivalLoadedState extends N_arrivalState {
  List<NewArrivalParse> n_arrivals;
  N_arrivalLoadedState({@required this.n_arrivals});
  @override
  List<Object> get props => null;
}

class N_arrivalErrorState extends N_arrivalState {
  String message;
  N_arrivalErrorState({@required this.message});
  @override
  List<Object> get props => null;
}
