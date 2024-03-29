// import 'package:ecommerce_store/common/styles/rounded_container.dart';
// import 'package:ecommerce_store/common/styles/shadow_style.dart';
// import 'package:ecommerce_store/common/widgets/icons/circular_icon.dart';
// import 'package:ecommerce_store/common/widgets/images/rounded_image.dart';
// import 'package:ecommerce_store/common/widgets/texts/brand_title_with_verification_icon.dart';
// import 'package:ecommerce_store/common/widgets/texts/product_price_text.dart';
// import 'package:ecommerce_store/common/widgets/texts/product_title_text.dart';
// import 'package:ecommerce_store/features/shop/screens/products_details/product_detail.dart';
// import 'package:ecommerce_store/utils/constants/app_colors.dart';
// import 'package:ecommerce_store/utils/constants/app_image.dart';
// import 'package:ecommerce_store/utils/constants/sizes.dart';
// import 'package:ecommerce_store/utils/helpers/helper_function.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:iconsax/iconsax.dart';

// class ProductCardHorizontal extends StatelessWidget {
//   const ProductCardHorizontal({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final dark = HelperFunction.isDarkMode(context);
//     return GestureDetector(
//       onTap: () => Get.to(const ProductDetail()),
//       child: Container(
//         width: 180,
//         padding: const EdgeInsets.all(1),
//         decoration: BoxDecoration(
//           boxShadow: [ShadowStyle.verticalProductShadow],
//           borderRadius: BorderRadius.circular(AppSizes.productImageRadius),
//           color: dark ? AppColors.darkGrey : AppColors.white,
//         ),
//         child: Column(
//           children: [
//             RoundedContainer(
//               height: 180,
//               padding: const EdgeInsets.all(AppSizes.sm),
//               backgroundColor: dark ? AppColors.dark : AppColors.light,
//               child: Stack(
//                 children: [
//                   const RoundedImage(
//                     imageUrl: AppImages.productImage1,
//                     applyImageRadius: true,
//                   ),
//                   Positioned(
//                     top: 22,
//                     child: RoundedContainer(
//                       radius: AppSizes.sm,
//                       backgroundColor:
//                           AppColors.secondaryColor.withOpacity(0.8),
//                       padding: const EdgeInsets.symmetric(
//                           horizontal: AppSizes.sm, vertical: AppSizes.xs),
//                       child: Text(
//                         "25%",
//                         style: Theme.of(context)
//                             .textTheme
//                             .labelLarge!
//                             .apply(color: AppColors.black),
//                       ),
//                     ),
//                   ),
//                   //FAVORITE ICON
//                   const Positioned(
//                     right: 0,
//                     top: 0,
//                     child: CircularIcon(
//                       icon: Iconsax.heart5,
//                       color: Colors.red,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(height: AppSizes.spaceBtwItems / 2),
//             const Padding(
//               padding: EdgeInsets.only(left: AppSizes.sm),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   ProductTitleText(
//                     title: "Green Nike Air Shoes",
//                     smallSize: true,
//                   ),
//                   SizedBox(height: AppSizes.spaceBtwItems / 2),
//                   BrandTitleWithVerficationIcon(
//                     title: 'Nike',
//                   ),
//                 ],
//               ),
//             ),
//             const Spacer(),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 const Padding(
//                   padding: EdgeInsets.only(left: AppSizes.sm),
//                   child: ProductPriceText(price: "35.0"),
//                 ),
//                 Container(
//                   decoration: const BoxDecoration(
//                     color: AppColors.dark,
//                     borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(AppSizes.cardRadiusMd),
//                       bottomLeft: Radius.circular(AppSizes.productImageRadius),
//                     ),
//                   ),
//                   child: const SizedBox(
//                     height: AppSizes.iconLg * 1.2,
//                     width: AppSizes.iconLg * 1.2,
//                     child: Center(
//                       child: Icon(
//                         Iconsax.add,
//                         color: AppColors.white,
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:ecommerce_store/common/styles/rounded_container.dart';
import 'package:ecommerce_store/common/styles/shadow_style.dart';
import 'package:ecommerce_store/common/widgets/icons/circular_icon.dart';
import 'package:ecommerce_store/common/widgets/images/rounded_image.dart';
import 'package:ecommerce_store/common/widgets/texts/brand_title_with_verification_icon.dart';
import 'package:ecommerce_store/common/widgets/texts/product_price_text.dart';
import 'package:ecommerce_store/common/widgets/texts/product_title_text.dart';
import 'package:ecommerce_store/utils/constants/app_colors.dart';
import 'package:ecommerce_store/utils/constants/app_image.dart';
import 'package:ecommerce_store/utils/constants/sizes.dart';
import 'package:ecommerce_store/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProductCardHorizontal extends StatelessWidget {
  const ProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isDarkMode(context);
    return Container(
      width: 310,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        boxShadow: [ShadowStyle.verticalProductShadow],
        borderRadius: BorderRadius.circular(AppSizes.productImageRadius),
        color: dark ? AppColors.darkGrey : AppColors.softGrey,
      ),
      child: Row(
        children: [
          //Thumbnail
          RoundedContainer(
            height: 120,
            padding: const EdgeInsets.all(AppSizes.sm),
            backgroundColor: dark ? AppColors.dark : AppColors.light,
            child: Stack(
              children: [
                //Thumbnail image
                const SizedBox(
                  width: 120,
                  height: 120,
                  child: RoundedImage(
                    imageUrl: AppImages.productImage2,
                    applyImageRadius: true,
                  ),
                ),

                //Sale tag
                Positioned(
                  top: 12,
                  child: RoundedContainer(
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
                ),

                //Favourite icon button
                const Positioned(
                  right: 0,
                  top: 0,
                  child: CircularIcon(
                    icon: Iconsax.heart5,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),

          //Details
          SizedBox(
            width: 172,
            child: Padding(
              padding:
                  const EdgeInsets.only(top: AppSizes.sm, left: AppSizes.sm),
              child: Column(
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ProductTitleText(
                        title: "Green Nike Half Sleeves Shirt",
                        smallSize: true,
                      ),
                      SizedBox(height: AppSizes.spaceBtwItems / 2),
                      BrandTitleWithVerficationIcon(title: "Nike"),
                    ],
                  ),
                  const Spacer(),
                  //padding
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Flexible(child: ProductPriceText(price: "256.0")),
                      //Add to cart
                      Container(
                        decoration: const BoxDecoration(
                          color: AppColors.dark,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(AppSizes.cardRadiusMd),
                            bottomRight:
                                Radius.circular(AppSizes.productImageRadius),
                          ),
                        ),
                        child: const SizedBox(
                          height: AppSizes.iconLg * 1.2,
                          width: AppSizes.iconLg * 1.2,
                          child: Center(
                            child: Icon(
                              Iconsax.add,
                              color: AppColors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
