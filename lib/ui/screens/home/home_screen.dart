import 'package:ecommerce_app/bloc/trendingproducts/t_product_bloc.dart';
import 'package:ecommerce_app/bloc/trendingsellers/t_seller_bloc.dart';
import 'package:ecommerce_app/data/repository/trending_prodct_repository.dart';
import 'package:ecommerce_app/data/repository/trending_seller_repository.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/ui/components/coustom_bottom_nav_bar.dart';
import 'package:ecommerce_app/ui/enums.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MultiBlocProvider(providers: [
        BlocProvider<T_SellerBloc>(
          create: (BuildContext context) =>
              T_SellerBloc(repository: TrendingSellerRepositoryImp()),
        ),
        BlocProvider<T_ProductBloc>(
          create: (BuildContext context) =>
              T_ProductBloc(repository: TrendingProductRepositoryImp()),
        ),
      ], child: Body()),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),

      // body: BlocProvider(
      //     create: (context) =>
      //         T_SellerBloc(repository: TrendingSellerRepositoryImp()),
      //     child: Body()),
      // bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
