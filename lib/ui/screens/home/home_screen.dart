import 'package:ecommerce_app/bloc/newarrivals/n_arrival_bloc.dart';
import 'package:ecommerce_app/bloc/newshops/n_shop_bloc.dart';
import 'package:ecommerce_app/bloc/product/products_bloc.dart';
import 'package:ecommerce_app/bloc/trendingproducts/t_product_bloc.dart';
import 'package:ecommerce_app/bloc/trendingsellers/t_seller_bloc.dart';
import 'package:ecommerce_app/data/repository/new_arrivals_repository.dart';
import 'package:ecommerce_app/data/repository/new_shops_repository.dart';
import 'package:ecommerce_app/data/repository/products_repository.dart';
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
        BlocProvider<N_arrivalBloc>(
          create: (BuildContext context) =>
              N_arrivalBloc(repository: NewArrivalRepositoryImp()),
        ),
        BlocProvider<N_shopBloc>(
          create: (BuildContext context) =>
              N_shopBloc(repository: NewshopRepositoryImp()),
        ),
        BlocProvider<ProductBloc>(
          create: (BuildContext context) =>
              ProductBloc(repository: ProductRepositoryImp()),
        ),
      ], child: Body()),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
