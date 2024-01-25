
import 'package:ecommerce_store/common/widgets/appbar/appbar.dart';
import 'package:ecommerce_store/common/widgets/custom_shapes/curved_edges/curved_edges_widgets.dart';
import 'package:ecommerce_store/common/widgets/icons/circular_icon.dart';
import 'package:ecommerce_store/common/widgets/images/rounded_image.dart';
import 'package:ecommerce_store/utils/constants/app_colors.dart';
import 'package:ecommerce_store/utils/constants/app_image.dart';
import 'package:ecommerce_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProductImageSlider extends StatelessWidget {
  const ProductImageSlider({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return CurvedEdgeWidget(
      child: Container(
        color: dark ? AppColors.darkGrey : AppColors.light,
        child: Stack(
          children: [
            //main large
            const SizedBox(
              height: 400,
              child: Padding(
                padding:
                    EdgeInsets.all(AppSizes.productImageRadius * 2),
                child: Center(
                  child: Image(
                    image: AssetImage(AppImages.productImage1),
                  ),
                ),
              ),
            ),
            //image slider
            Positioned(
              right: 0,
              bottom: 30,
              left: AppSizes.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  separatorBuilder: (_, __) => const SizedBox(
                    width: AppSizes.spaceBtwItems,
                  ),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 4,
                  itemBuilder: (context, index) => RoundedImage(
                    width: 80,
                    background: dark ? AppColors.dark : AppColors.white,
                    border: Border.all(color: AppColors.primaryColor),
                    padding: const EdgeInsets.all(AppSizes.sm),
                    imageUrl: AppImages.productImage3,
                  ),
                ),
              ),
            ),
            const MyAppBar(
              showBackArrow: true,
              action: [
                CircularIcon(
                  icon: Iconsax.heart5,
                  color: Colors.red,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
