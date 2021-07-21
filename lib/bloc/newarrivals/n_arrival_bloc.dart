// Connect the data to UI
// update UI when state chnage
// bridge between UI and bloc

import 'package:ecommerce_app/bloc/newarrivals/n_arrival_event.dart';
import 'package:ecommerce_app/data/models/new_arrivals.dart';
import 'package:ecommerce_app/data/repository/new_arrivals_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'n_arrival_state.dart';

class N_arrivalBloc extends Bloc<N_arrivalEvent, N_arrivalState> {
  NewArrivalRepository repository;

  N_arrivalBloc({@required this.repository}) : super(null);

  N_arrivalState get initialState => N_arrivalInitialState();
  @override
  Stream<N_arrivalState> mapEventToState(N_arrivalEvent event) async* {
    if (event is FetchN_arrival) {
      yield N_arrivalLoadingState();

      try {
        List<NewArrivalParse> n_arrivals = await repository.getNewArrivals();
        yield N_arrivalLoadedState(n_arrivals: n_arrivals);
      } catch (e) {
        yield N_arrivalErrorState(message: e.toString());
      }
    }
  }
}
