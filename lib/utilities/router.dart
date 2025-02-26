import 'package:flutter/cupertino.dart';
import 'package:flutter_ecommerce/models/product_model.dart';
import 'package:flutter_ecommerce/utilities/routes.dart';
import 'package:flutter_ecommerce/views/pages/bottom_navbar.dart';
import 'package:flutter_ecommerce/views/pages/landing_page.dart';
import 'package:flutter_ecommerce/views/pages/auth_page.dart';
import 'package:flutter_ecommerce/views/pages/my_orders_pagr.dart';

import '../views/pages/product_details_page.dart';

Route<dynamic> onGenerate(RouteSettings settings) {
  switch (settings.name) {
    case AppRoutes.authPageRoute:
      return CupertinoPageRoute(
        builder: (_) => const AuthPage(),
        settings: settings,
      );
    case AppRoutes.bottomNavBarRoute:
      return CupertinoPageRoute(
        builder: (_) => const BottomNavBar(),
        settings: settings,
      );
    case AppRoutes.productDetailsPageRoute:
    final procuct = settings.arguments as Product;
      return CupertinoPageRoute(
        builder: (_) =>  ProductDetailsPage(product: procuct,),
        settings: settings,
      );
    case AppRoutes.myOrdersPageRoute:
    
      return CupertinoPageRoute(
        builder: (_) =>  const MyOrdersPage(),
        settings: settings,
         
      );
    case AppRoutes.landingPageRoute:
    default:
      return CupertinoPageRoute(
        builder: (_) => const LandingPage(),
        settings: settings,
      );
  }
}
