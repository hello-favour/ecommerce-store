import 'package:ecommerce_store/features/authentication/screens/signup/signup.dart';
import 'package:ecommerce_store/features/authentication/screens/signup/signup_form.dart';
import 'package:ecommerce_store/features/personalization/screens/address/add_new_address.dart';
import 'package:ecommerce_store/features/personalization/screens/address/address.dart';
import 'package:ecommerce_store/features/personalization/screens/cart/cart.dart';
import 'package:ecommerce_store/features/personalization/screens/checkout/check_out.dart';
import 'package:ecommerce_store/features/shop/screens/order/order.dart';
import 'package:ecommerce_store/features/shop/screens/product_reviews/product_reviews.dart';
import 'package:ecommerce_store/features/shop/screens/products_details/product_detail.dart';
import 'package:ecommerce_store/utils/constants/app_colors.dart';
import 'package:ecommerce_store/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      title: 'Ecommerce Store',
      darkTheme: AppTheme.darkTheme,
      theme: AppTheme.lightTheme,
      home: const OrderScreen(),
      // const Scaffold(
      //   backgroundColor: AppColors.primaryColor,
      //   body: Center(
      //     child: CircularProgressIndicator(
      //       color: Colors.white,
      //     ),
      //   ),
      // ),
    );
  }
}
