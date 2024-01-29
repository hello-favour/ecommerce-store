import 'package:ecommerce_store/common/widgets/appbar/appbar.dart';
import 'package:ecommerce_store/common/widgets/images/rounded_image.dart';
import 'package:ecommerce_store/common/widgets/products/products_cards/product_card_horizontal.dart';
import 'package:ecommerce_store/common/widgets/texts/section_heading.dart';
import 'package:ecommerce_store/utils/constants/app_colors.dart';
import 'package:ecommerce_store/utils/constants/app_image.dart';
import 'package:ecommerce_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
        title: Text(
          "Sports shirts",
          style: TextStyle(color: AppColors.black),
        ),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              //Banner
              const RoundedImage(
                imageUrl: AppImages.promoBanner3,
                applyImageRadius: true,
                width: double.infinity,
                height: null,
              ),
              const SizedBox(height: AppSizes.spaceBtwSections),
              Column(
                children: [
                  SeactionHeading(
                    title: "Sports shirts",
                    onPressed: () {},
                  ),
                  const SizedBox(height: AppSizes.spaceBtwItems / 2),
                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (_, __) =>
                          const SizedBox(height: AppSizes.spaceBtwItems),
                      itemBuilder: (context, index) =>
                          const ProductCardHorizontal(),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
