import 'package:ecommerce_store/common/styles/rounded_container.dart';
import 'package:ecommerce_store/utils/constants/app_colors.dart';
import 'package:ecommerce_store/utils/constants/sizes.dart';
import 'package:ecommerce_store/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SingleAddress extends StatelessWidget {
  final bool selectAddress;
  const SingleAddress({super.key, required this.selectAddress});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isDarkMode(context);
    return RoundedContainer(
      padding: const EdgeInsets.all(AppSizes.md),
      width: double.infinity,
      showBorder: true,
      backgroundColor: selectAddress
          ? AppColors.primaryColor.withOpacity(0.5)
          : Colors.transparent,
      bordercolor: selectAddress
          ? Colors.transparent
          : dark
              ? AppColors.darkGrey
              : AppColors.grey,
      margin: const EdgeInsets.only(bottom: AppSizes.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon(
              selectAddress ? Iconsax.tick_circle5 : null,
              color: selectAddress
                  ? dark
                      ? AppColors.light
                      : AppColors.dark.withOpacity(0.6)
                  : null,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "John Doe",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: AppSizes.sm / 2),
              const Text(
                "(+234) 903 399 82852",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: AppSizes.sm / 2),
              const Text(
                "82356 Timmy Coves, South Liana, Maine, 87665, USA",
                softWrap: true,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
