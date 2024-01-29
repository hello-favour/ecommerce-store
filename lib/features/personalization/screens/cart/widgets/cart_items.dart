import 'package:ecommerce_store/common/widgets/products/cart/cart_item.dart';
import 'package:ecommerce_store/common/widgets/products/cart/remove_button.dart';
import 'package:ecommerce_store/common/widgets/texts/product_price_text.dart';
import 'package:ecommerce_store/utils/constants/sizes.dart';
import 'package:ecommerce_store/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class CartItems extends StatelessWidget {
  final bool showAddRemoveButtons;
  const CartItems({super.key, this.showAddRemoveButtons = true});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isDarkMode(context);
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (_, __) =>
          const SizedBox(height: AppSizes.spaceBtwSections),
      itemCount: 10,
      itemBuilder: (context, index) => Column(
        children: [
          const CartItem(),
          if (showAddRemoveButtons)
            const SizedBox(height: AppSizes.spaceBtwItems),
          //Add remove button row with total price
          if (showAddRemoveButtons)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const SizedBox(width: 70),
                    //add bravo icon
                    ProductWithQuantityAddRemoveButton(dark: dark),
                  ],
                ),
                const ProductPriceText(price: "256"),
              ],
            ),
        ],
      ),
    );
  }
}
