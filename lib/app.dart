import 'package:ecommerce_store/features/shop/screens/all_products/all_products.dart';
import 'package:ecommerce_store/features/shop/screens/sub_category/sub_category.dart';
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
      home: const AllProducts(),
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
