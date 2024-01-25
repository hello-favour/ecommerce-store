import 'package:ecommerce_store/common/styles/rounded_container.dart';
import 'package:ecommerce_store/common/widgets/images/circular_image.dart';
import 'package:ecommerce_store/common/widgets/texts/brand_title_text.dart';
import 'package:ecommerce_store/common/widgets/texts/product_price_text.dart';
import 'package:ecommerce_store/common/widgets/texts/product_title_text.dart';
import 'package:ecommerce_store/utils/constants/app_colors.dart';
import 'package:ecommerce_store/utils/constants/app_image.dart';
import 'package:ecommerce_store/utils/constants/enum.dart';
import 'package:ecommerce_store/utils/constants/sizes.dart';
import 'package:ecommerce_store/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class ProductMetaData extends StatelessWidget {
  const ProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //Price & sale price
        Row(
          children: [
            RoundedContainer(
              radius: AppSizes.sm,
              backgroundColor: AppColors.secondaryColor.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(
                  horizontal: AppSizes.sm, vertical: AppSizes.xs),
              child: Text(
                "25%",
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: AppColors.black),
              ),
            ),
            //Price
            Text(
              "\$250",
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .apply(decoration: TextDecoration.lineThrough),
            ),
            const SizedBox(width: AppSizes.spaceBtwItems),
            const ProductPriceText(price: "175"),
          ],
        ),
        const SizedBox(height: AppSizes.spaceBtwItems / 1.5),
        //title
        const ProductTitleText(title: "Green Nike Sports Shirt"),
        const SizedBox(height: AppSizes.spaceBtwItems / 1.5),

        //Stock status
        Row(
          children: [
            const ProductTitleText(title: "Status"),
            const SizedBox(width: AppSizes.spaceBtwItems),
            Text("In Stock", style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
        const SizedBox(height: AppSizes.spaceBtwItems / 1.5),
        Row(
          children: [
            CircularImage(
              image: AppImages.shoesIcon,
              width: 32,
              height: 32,
              overlayColor: dark ? AppColors.white : AppColors.black,
            ),
            const BrandTitleText(
                title: "Nike", brandTextSize: Textsizes.medium),
          ],
        ),
      ],
    );
  }
}
