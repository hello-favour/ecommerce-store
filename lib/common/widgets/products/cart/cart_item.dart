import 'package:ecommerce_store/common/widgets/images/rounded_image.dart';
import 'package:ecommerce_store/common/widgets/texts/brand_title_with_verification_icon.dart';
import 'package:ecommerce_store/common/widgets/texts/product_title_text.dart';
import 'package:ecommerce_store/utils/constants/app_colors.dart';
import 'package:ecommerce_store/utils/constants/app_image.dart';
import 'package:ecommerce_store/utils/constants/sizes.dart';
import 'package:ecommerce_store/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RoundedImage(
          imageUrl: AppImages.productImage1,
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(AppSizes.sm),
          background: HelperFunction.isDarkMode(context)
              ? AppColors.darkGrey
              : AppColors.light,
        ),
        const SizedBox(width: AppSizes.spaceBtwItems),

        //title price & size
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const BrandTitleWithVerficationIcon(title: "Nike"),
              const ProductTitleText(
                title: "Black Sports Shoes",
                maxlines: 1,
              ),

              //attributes
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                        text: "Color",
                        style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(
                        text: "Green",
                        style: Theme.of(context).textTheme.bodyLarge),
                    TextSpan(
                        text: "Size",
                        style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(
                        text: "UK 08",
                        style: Theme.of(context).textTheme.bodyLarge),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
