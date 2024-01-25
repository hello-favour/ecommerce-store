import 'package:ecommerce_store/features/shop/screens/products_details/widgets/product_detail_image_slider.dart';
import 'package:ecommerce_store/features/shop/screens/products_details/widgets/product_meta_data.dart';
import 'package:ecommerce_store/features/shop/screens/products_details/widgets/rating_widget_share.dart';
import 'package:ecommerce_store/utils/constants/sizes.dart';
import 'package:ecommerce_store/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //PRODUCT IMAGE SLIDER
            ProductImageSlider(dark: dark),
            //PRODUCT DETAILS
            const Padding(
              padding: EdgeInsets.only(
                  right: AppSizes.defaultSpace,
                  bottom: AppSizes.defaultSpace,
                  left: AppSizes.defaultSpace),
              child: Column(
                children: [
                  //RATING & SHARE
                  RatingAndShare(),
                  //PRICE, TITLE, STOCK & BRAND
                  ProductMetaData(),
                  //ATTRIBUTES
                  //CHECKOUT BUTTON
                  //DESCRIPTION
                  //REVIEWS
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
