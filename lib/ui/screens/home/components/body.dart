import 'package:ecommerce_app/bloc/t_seller_bloc.dart';
import 'package:ecommerce_app/bloc/t_seller_event.dart';
import 'package:ecommerce_app/bloc/t_seller_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../../size_config.dart';
import 'categories.dart';
import 'home_header.dart';
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
  @override
  void initState() {
    t_sellerBloc = BlocProvider.of<T_SellerBloc>(context);
    t_sellerBloc.add(FetchT_Seller());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            // SizedBox(height: getProportionateScreenHeight(10)),
            // HomeHeader(),
            // SizedBox(height: getProportionateScreenWidth(10)),
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
            BlocBuilder<T_SellerBloc, T_SellerState>(builder: (context, state) {
              if (state is T_SellerInitialState) {
                return buildLoading();
              } else if (state is T_SellerLoadingState) {
                Fluttertoast.showToast(
                    msg: state.toString(),
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.CENTER,
                    timeInSecForIosWeb: 1,
                    backgroundColor: Colors.red,
                    textColor: Colors.white,
                    fontSize: 16.0);
                return buildLoading();
              } else if (state is T_SellerLoadedState) {
                return build_tseller(state.t_sellers);
              } else if (state is T_SellerErrorState) {
                return buildError(state.message);
              }
            }),

            // SizedBox(height: getProportionateScreenWidth(10)),
            // TrendingProducts(),
            // SizedBox(height: getProportionateScreenWidth(30)),
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
