import 'package:ecommerce_store/common/widgets/texts/section_heading.dart';
import 'package:ecommerce_store/features/shop/screens/products_details/widgets/bottom_add_to_cart.dart';
import 'package:ecommerce_store/features/shop/screens/products_details/widgets/product_attributes.dart';
import 'package:ecommerce_store/features/shop/screens/products_details/widgets/product_detail_image_slider.dart';
import 'package:ecommerce_store/features/shop/screens/products_details/widgets/product_meta_data.dart';
import 'package:ecommerce_store/features/shop/screens/products_details/widgets/rating_widget_share.dart';
import 'package:ecommerce_store/utils/constants/sizes.dart';
import 'package:ecommerce_store/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: const BottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //PRODUCT IMAGE SLIDER
            ProductImageSlider(dark: dark),
            //PRODUCT DETAILS
            Padding(
              padding: const EdgeInsets.only(
                  right: AppSizes.defaultSpace,
                  bottom: AppSizes.defaultSpace,
                  left: AppSizes.defaultSpace),
              child: Column(
                children: [
                  //RATING & SHARE
                  const RatingAndShare(),
                  //PRICE, TITLE, STOCK & BRAND
                  const ProductMetaData(),
                  //ATTRIBUTES
                  const ProductAttributes(),
                  //CHECKOUT BUTTON
                  const SizedBox(height: AppSizes.spaceBtwItems),
                  ElevatedButton(
                      onPressed: () {}, child: const Text("Checkout")),
                  //DESCRIPTION
                  const SeactionHeading(
                    title: "Description",
                    showActionButton: false,
                  ),
                  const SizedBox(height: AppSizes.spaceBtwItems),
                  const ReadMoreText(
                    "This is a product description for Blue Nike Sleeve less vest, There are more things that can be added but i ",
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: " Show more",
                    trimExpandedText: " less",
                    lessStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),
                  //REVIEWS
                  const Divider(),
                  const SizedBox(height: AppSizes.spaceBtwItems),
                  Row(
                    children: [
                      const SeactionHeading(
                          title: "Review(199)", showActionButton: false),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Iconsax.arrow_right_3, size: 18))
                    ],
                  ),
                  const SizedBox(height: AppSizes.spaceBtwSections),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
