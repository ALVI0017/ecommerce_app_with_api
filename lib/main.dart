import 'package:flutter/material.dart';
import 'package:ecommerce_app/routes.dart';
import 'package:ecommerce_app/ui/screens/splash/splash_screen.dart';
import 'package:ecommerce_app/ui/theme.dart';

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
