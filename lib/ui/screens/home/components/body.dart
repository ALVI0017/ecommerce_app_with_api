import 'package:ecommerce_app/bloc/event.dart';
import 'package:ecommerce_app/bloc/state.dart';
import 'package:ecommerce_app/bloc/bloc.dart';
import 'package:ecommerce_app/ui/screens/home/components/product_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../size_config.dart';
import 'home_header.dart';
import 'new_shop_ui.dart';
import 'trending_products_ui.dart';
import 'trending_sellers_ui.dart';
import 'new_arrival_ui.dart';
import 'package:ecommerce_app/ui/components/error.dart';
import 'package:ecommerce_app/ui/components/loading.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  T_SellerBloc t_sellerBloc;
  T_ProductBloc t_productBloc;
  N_arrivalBloc n_arrivalBloc;
  N_shopBloc n_shopBloc;
  ProductBloc productBloc;

  @override
  void initState() {
    t_sellerBloc = BlocProvider.of<T_SellerBloc>(context);
    t_sellerBloc.add(FetchData());
    t_productBloc = BlocProvider.of<T_ProductBloc>(context);
    t_productBloc.add(FetchData());
    n_arrivalBloc = BlocProvider.of<N_arrivalBloc>(context);
    n_arrivalBloc.add(FetchData());
    n_shopBloc = BlocProvider.of<N_shopBloc>(context);
    n_shopBloc.add(FetchData());
    productBloc = BlocProvider.of<ProductBloc>(context);
    productBloc.add(FetchData());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(10)),
            HomeHeader(),
            SizedBox(height: getProportionateScreenWidth(10)),

            BlocBuilder<T_SellerBloc, X_State>(builder: (context, state) {
              if (state is InitialState) {
                return buildLoading();
              } else if (state is LoadingState) {
                return buildLoading();
              } else if (state is T_SellerLoadedState) {
                return build_tseller(state.t_sellers);
              } else if (state is T_SellerErrorState) {
                return buildError(state.message);
              }
            }),

            SizedBox(height: getProportionateScreenWidth(10)),
            BlocBuilder<T_ProductBloc, X_State>(builder: (context, state) {
              if (state is InitialState) {
                return buildLoading();
              } else if (state is LoadingState) {
                return buildLoading();
              } else if (state is T_ProductLoadedState) {
                return build_tproduct(state.t_products);
              } else if (state is T_ProductErrorState) {
                return buildError(state.message);
              }
            }),
            SizedBox(height: getProportionateScreenWidth(10)),

            BlocBuilder<ProductBloc, X_State>(builder: (context, state) {
              if (state is InitialState) {
                return buildLoading();
              } else if (state is LoadingState) {
                return buildLoading();
              } else if (state is ProductLoadedState) {
                return build_product(
                    state.products, state.products.length, 0, 3);
              } else if (state is ProductErrorState) {
                return buildError(state.message);
              }
            }),
            SizedBox(height: getProportionateScreenWidth(10)),

            BlocBuilder<N_arrivalBloc, X_State>(builder: (context, state) {
              if (state is InitialState) {
                return buildLoading();
              } else if (state is LoadingState) {
                return buildLoading();
              } else if (state is N_arrivalLoadedState) {
                return build_N_arrival(state.n_arrivals);
              } else if (state is N_arrivalErrorState) {
                return buildError(state.message);
              }
            }),
            // TrendingProducts(),
            SizedBox(height: getProportionateScreenWidth(10)),

            BlocBuilder<ProductBloc, X_State>(builder: (context, state) {
              if (state is InitialState) {
                return buildLoading();
              } else if (state is LoadingState) {
                return buildLoading();
              } else if (state is ProductLoadedState) {
                return build_product(
                    state.products, state.products.length, 4, 7);
              } else if (state is ProductErrorState) {
                return buildError(state.message);
              }
            }),
            // TrendingProducts(),
            SizedBox(height: getProportionateScreenWidth(10)),

            BlocBuilder<N_shopBloc, X_State>(builder: (context, state) {
              if (state is InitialState) {
                return buildLoading();
              } else if (state is LoadingState) {
                return buildLoading();
              } else if (state is N_shopLoadedState) {
                return build_N_Shop(state.n_shops);
              } else if (state is N_shopErrorState) {
                return buildError(state.message);
              }
            }),
            SizedBox(height: getProportionateScreenWidth(30)),

            BlocBuilder<ProductBloc, X_State>(builder: (context, state) {
              if (state is InitialState) {
                return buildLoading();
              } else if (state is LoadingState) {
                return buildLoading();
              } else if (state is ProductLoadedState) {
                return build_product(state.products, state.products.length, 8,
                    state.products.length);
              } else if (state is ProductErrorState) {
                return buildError(state.message);
              }
            }),
          ],
        ),
      ),
    );
  }
}
