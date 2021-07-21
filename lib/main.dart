import 'package:ecommerce_app/bloc/t_seller_bloc.dart';
import 'package:ecommerce_app/data/repository/trending_seller_repository.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/routes.dart';
import 'package:ecommerce_app/ui/screens/splash/splash_screen.dart';
import 'package:ecommerce_app/ui/theme.dart';
import 'package:ecommerce_app/ui/screens/home/home_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
      // home: HomeScreen(),
      // We use routeName so that we dont need to remember the name
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
