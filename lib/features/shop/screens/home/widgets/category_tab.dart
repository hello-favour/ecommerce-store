import 'package:ecommerce_store/common/widgets/brands/brand_show_case.dart';
import 'package:ecommerce_store/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerce_store/common/widgets/products/products_cards/product_card_vertical.dart';
import 'package:ecommerce_store/common/widgets/texts/section_heading.dart';
import 'package:ecommerce_store/utils/constants/app_image.dart';
import 'package:ecommerce_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              //BRANDS
              const BrandShowCase(
                imageUrl: [
                  AppImages.productImage3,
                  AppImages.productImage2,
                  AppImages.productImage1
                ],
              ),
              const BrandShowCase(
                imageUrl: [
                  AppImages.productImage3,
                  AppImages.productImage2,
                  AppImages.productImage1
                ],
              ),
              const SizedBox(height: AppSizes.spaceBtwItems),
              //PRODUCTS
              SeactionHeading(
                title: "You might like",
                showActionButton: true,
                onPressed: () {},
              ),
              const SizedBox(height: AppSizes.spaceBtwItems),
              GridLayout(
                itemCount: 4,
                itemBuilder: (context, index) => const ProductCardVertical(),
              ),
              const SizedBox(height: AppSizes.spaceBtwItems),
            ],
          ),
        ),
      ],
    );
  }
}
