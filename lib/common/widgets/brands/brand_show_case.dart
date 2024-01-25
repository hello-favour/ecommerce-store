import 'package:ecommerce_store/common/styles/rounded_container.dart';
import 'package:ecommerce_store/common/widgets/brands/brand_card.dart';
import 'package:ecommerce_store/utils/constants/app_colors.dart';
import 'package:ecommerce_store/utils/constants/app_image.dart';
import 'package:ecommerce_store/utils/constants/sizes.dart';
import 'package:ecommerce_store/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class BrandShowCase extends StatelessWidget {
  final List<String> imageUrl;
  const BrandShowCase({
    super.key,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      showBorder: true,
      bordercolor: AppColors.darkGrey,
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.all(AppSizes.md),
      margin: const EdgeInsets.only(bottom: AppSizes.spaceBtwItems),
      child: Column(
        children: [
          //BRAND WITH PRODUCT C0UNT
          const BrandCard(showBorder: false),
          const SizedBox(height: AppSizes.spaceBtwItems),
          //BRAND TOP 3 PRODUCTS IMAGES
          Row(
            children: imageUrl
                .map((image) => brandToProductImageWidget(context, image))
                .toList(),
          ),
        ],
      ),
    );
  }

  Widget brandToProductImageWidget(BuildContext context, String image) {
    return Expanded(
      child: RoundedContainer(
        height: 100,
        backgroundColor: HelperFunction.isDarkMode(context)
            ? AppColors.darkGrey
            : AppColors.light,
        margin: const EdgeInsets.only(right: AppSizes.sm),
        padding: const EdgeInsets.all(AppSizes.md),
        child: Image(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
