import 'package:ecommerce_app/data/repository/trending_prodct_repository.dart';
import 'package:ecommerce_app/ui/screens/home/components/body.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/routes.dart';
import 'package:ecommerce_app/ui/screens/splash/splash_screen.dart';
import 'package:ecommerce_app/ui/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/bloc.dart';
import 'data/repository/new_arrivals_repository.dart';
import 'data/repository/new_shops_repository.dart';
import 'data/repository/products_repository.dart';
import 'data/repository/trending_seller_repository.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //  Root of the application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ecommerce App',
      theme: theme(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
