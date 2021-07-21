// Connect the data to UI
// update UI when state chnage
// bridge between UI and bloc

import 'package:ecommerce_app/data/models/Products.dart';
import 'package:ecommerce_app/data/repository/products_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:ecommerce_app/bloc/product/products_Event.dart';
import 'package:ecommerce_app/data/models/trending_products.dart';

import 'ProductsState.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductRepository repository;

  ProductBloc({@required this.repository}) : super(null);

  ProductState get initialState => ProductInitialState();
  @override
  Stream<ProductState> mapEventToState(ProductEvent event) async* {
    if (event is FetchProduct) {
      yield ProductLoadingState();
      try {
        List<ProductParse> products =
        await repository.getProducts();
        yield ProductLoadedState(products: products);
      } catch (e) {
        yield ProductErrorState(message: e.toString());
      }
    }
  }
}
