import 'package:ecommerce_app/bloc/newarrivals/n_arrival_bloc.dart';
import 'package:ecommerce_app/bloc/newarrivals/n_arrival_event.dart';
import 'package:ecommerce_app/bloc/newarrivals/n_arrival_state.dart';
import 'package:ecommerce_app/bloc/newshops/n_shop_bloc.dart';
import 'package:ecommerce_app/bloc/newshops/n_shop_event.dart';
import 'package:ecommerce_app/bloc/newshops/n_shop_state.dart';
import 'package:ecommerce_app/bloc/trendingproducts/t_product_bloc.dart';
import 'package:ecommerce_app/bloc/trendingproducts/t_product_event.dart';
import 'package:ecommerce_app/bloc/trendingproducts/t_product_state.dart';
import 'package:ecommerce_app/bloc/trendingsellers/t_seller_bloc.dart';
import 'package:ecommerce_app/bloc/trendingsellers/t_seller_event.dart';
import 'package:ecommerce_app/bloc/trendingsellers/t_seller_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../../size_config.dart';
import 'categories.dart';
import 'home_header.dart';
import 'new_shop_ui.dart';
import 'trending_products_ui.dart';
import 'special_offers.dart';
import 'trending_sellers_ui.dart';
import 'new_arrival_ui.dart';
import 'package:ecommerce_app/ui/components/list.dart';
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

  @override
  void initState() {
    t_sellerBloc = BlocProvider.of<T_SellerBloc>(context);
    t_sellerBloc.add(FetchT_Seller());
    t_productBloc = BlocProvider.of<T_ProductBloc>(context);
    t_productBloc.add(FetchT_Product());
    n_arrivalBloc = BlocProvider.of<N_arrivalBloc>(context);
    n_arrivalBloc.add(FetchN_arrival());
    n_shopBloc = BlocProvider.of<N_shopBloc>(context);
    n_shopBloc.add(FetchN_shop());
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
            // // BlocBuilder<FoodBloc, FoodState>(builder: (context, state) {
            // //   if (state is FoodInitialState) {
            // //     return buildLoading();
            // //   } else if (state is FoodLoadingState) {
            // //     return buildLoading();
            // //   } else if (state is FoodLoadedState) {
            // //     return buildHintsList(state.recipes);
            // //   } else if (state is FoodErrorState) {
            // //     return buildError(state.message);
            // //   }
            // // }),
            // BlocBuilder<T_SellerBloc, T_SellerState>(builder: (context, state) {
            //   if (state is T_SellerInitialState) {
            //     return buildLoading();
            //   } else if (state is T_SellerLoadingState) {
            //     return buildLoading();
            //   } else if (state is T_SellerLoadedState) {
            //     return build_tseller(state.t_sellers);
            //   } else if (state is T_SellerErrorState) {
            //     return buildError(state.message);
            //   }
            // }),

            SizedBox(height: getProportionateScreenWidth(10)),
            BlocBuilder<T_ProductBloc, T_ProductState>(
                builder: (context, state) {
              if (state is T_ProductInitialState) {
                return buildLoading();
              } else if (state is T_ProductLoadingState) {
                return buildLoading();
              } else if (state is T_ProductLoadedState) {
                return build_tproduct(state.t_products);
              } else if (state is T_ProductErrorState) {
                return buildError(state.message);
              }
            }),
            // TrendingProducts(),
            SizedBox(height: getProportionateScreenWidth(10)),

            BlocBuilder<N_arrivalBloc, N_arrivalState>(
                builder: (context, state) {
              if (state is N_arrivalInitialState) {
                return buildLoading();
              } else if (state is N_arrivalLoadingState) {
                return buildLoading();
              } else if (state is N_arrivalLoadedState) {
                return build_N_arrival(state.n_arrivals);
              } else if (state is N_arrivalErrorState) {
                return buildError(state.message);
              }
            }),
            // TrendingProducts(),
            SizedBox(height: getProportionateScreenWidth(10)),

            BlocBuilder<N_shopBloc, N_shopState>(builder: (context, state) {
              if (state is N_shopInitialState) {
                return buildLoading();
              } else if (state is N_shopLoadingState) {
                return buildLoading();
              } else if (state is N_shopLoadedState) {
                return build_N_Shop(state.n_shops);
              } else if (state is N_shopErrorState) {
                return buildError(state.message);
              }
            }),
            // TrendingProducts(),
            SizedBox(height: getProportionateScreenWidth(30)),
            // Categories(),
            // SizedBox(height: getProportionateScreenWidth(30)),
            // NewArrivals(),
            // SizedBox(height: getProportionateScreenWidth(30)),
            // SpecialOffers(),
            // SizedBox(height: getProportionateScreenWidth(30)),
          ],
        ),
      ),
    );
  }
}
