import 'package:ecommerce_store/common/widgets/appbar/appbar.dart';
import 'package:ecommerce_store/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:ecommerce_store/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:ecommerce_store/common/widgets/image_text_widgets/vertical_image_text.dart';
import 'package:ecommerce_store/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerce_store/common/widgets/products/products_cards/product_card_vertical.dart';
import 'package:ecommerce_store/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:ecommerce_store/common/widgets/texts/section_heading.dart';
import 'package:ecommerce_store/features/shop/screens/home/widgets/home_slider.dart';
import 'package:ecommerce_store/utils/constants/app_colors.dart';
import 'package:ecommerce_store/utils/constants/app_image.dart';
import 'package:ecommerce_store/utils/constants/sizes.dart';
import 'package:ecommerce_store/utils/constants/text_string.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryHeaderContainer(
              child: Column(
                children: [
                  MyAppBar(
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          TextString.homeAppbarTitle,
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium!
                              .apply(color: AppColors.grey),
                        ),
                        Text(
                          TextString.homeAppbarSubtitle,
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .apply(color: AppColors.white),
                        ),
                      ],
                    ),
                    action: [
                      CartCounterIcon(
                        onPressed: () {},
                        iconColor: AppColors.white,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: AppSizes.spaceBtwItems),
            const SearchContainer(
              text: 'Search in store',
            ),
            const SizedBox(height: AppSizes.spaceBtwItems),
            Padding(
              padding: const EdgeInsets.only(left: AppSizes.defaultSpace),
              child: Column(
                children: [
                  const SeactionHeading(
                    title: "Popular Categories",
                    showActionButton: false,
                    textColor: AppColors.white,
                  ),
                  const SizedBox(height: AppSizes.spaceBtwItems),

                  //CATEGORIES
                  SizedBox(
                    height: 80,
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 6,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return VerticalImageText(
                          image: AppImages.shoesIcon,
                          title: 'Shoes',
                          onTap: () {},
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(AppSizes.defaultSpace),
              child: Column(
                children: [
                  const PromoSlider(
                    banners: [
                      AppImages.promoBanner1,
                      AppImages.promoBanner2,
                      AppImages.promoBanner3
                    ],
                  ),
                  const SizedBox(height: AppSizes.spaceBtwItems),
                  SeactionHeading(
                    title: "Popular Products",
                    onPressed: () {},
                  ),
                  const SizedBox(height: AppSizes.spaceBtwItems),
                  GridLayout(
                    itemCount: 2,
                    itemBuilder: (context, index) =>
                        const ProductCardVertical(),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
