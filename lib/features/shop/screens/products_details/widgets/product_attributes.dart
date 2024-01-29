import 'package:ecommerce_store/common/styles/rounded_container.dart';
import 'package:ecommerce_store/common/widgets/chips/chip_choice.dart';
import 'package:ecommerce_store/common/widgets/texts/product_price_text.dart';
import 'package:ecommerce_store/common/widgets/texts/product_title_text.dart';
import 'package:ecommerce_store/common/widgets/texts/section_heading.dart';
import 'package:ecommerce_store/utils/constants/app_colors.dart';
import 'package:ecommerce_store/utils/constants/sizes.dart';
import 'package:ecommerce_store/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class ProductAttributes extends StatelessWidget {
  const ProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isDarkMode(context);
    return Column(
      children: [
        RoundedContainer(
          padding: const EdgeInsets.all(AppSizes.md),
          backgroundColor: dark ? AppColors.darkGrey : AppColors.grey,
          child: Column(
            children: [
              //Title, Price and Stock staus
              Row(
                children: [
                  const SeactionHeading(
                    title: "Variation",
                    showActionButton: false,
                  ),
                  const SizedBox(width: AppSizes.spaceBtwItems),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const ProductTitleText(
                            title: "Price :",
                            smallSize: true,
                          ),
                          const SizedBox(width: AppSizes.spaceBtwItems),
                          //Actual price
                          Text(
                            "\$25",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),

                          const SizedBox(width: AppSizes.spaceBtwItems),
                          //Sale price
                          const ProductPriceText(price: "20"),
                        ],
                      ),
                      //Stock
                      Row(
                        children: [
                          const ProductTitleText(
                              title: "Stock : ", smallSize: true),
                          Text("In Stock",
                              style: Theme.of(context).textTheme.titleMedium),
                        ],
                      ),
                    ],
                  ),
                  //Actual price
                ],
              ),
              //Variation Description
              const ProductTitleText(
                  title:
                      "This is the Description of the Product and it can go upto max 4 lines",
                  smallSize: true,
                  maxlines: 4),
            ],
          ),
        ),
        const SizedBox(height: AppSizes.spaceBtwItems),

        //Attributes
        Column(
          children: [
            const SeactionHeading(title: "Colors", showActionButton: false),
            const SizedBox(height: AppSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                ChipChoice(
                    text: 'Green', selected: true, onSelected: (value) {}),
                ChipChoice(
                    text: 'Blue', selected: true, onSelected: (value) {}),
                ChipChoice(
                    text: 'Yellow', selected: true, onSelected: (value) {}),
              ],
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SeactionHeading(title: "Size", showActionButton: false),
            const SizedBox(height: AppSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                ChipChoice(
                    text: 'EU 34', selected: true, onSelected: (value) {}),
                ChipChoice(
                    text: 'EU 38', selected: true, onSelected: (value) {}),
                ChipChoice(
                    text: 'EU 36', selected: true, onSelected: (value) {}),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
