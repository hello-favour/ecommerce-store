import 'package:ecommerce_store/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerce_store/common/widgets/products/products_cards/product_card_vertical.dart';
import 'package:ecommerce_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SortableProducts extends StatelessWidget {
  const SortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButtonFormField(
          decoration: const InputDecoration(
            prefixIcon: Icon(Iconsax.sort),
          ),
          onChanged: (value) {},
          items: [
            "Name",
            "Higher Price",
            "Lower Price",
            "Sale",
            "Newest",
            "Popularity"
          ]
              .map(
                (option) => DropdownMenuItem(
                  child: Text(option),
                  value: option,
                ),
              )
              .toList(),
        ),
        const SizedBox(height: AppSizes.spaceBtwSections),
        //Products
        GridLayout(
          itemCount: 6,
          itemBuilder: (context, index) => const ProductCardVertical(),
        ),
      ],
    );
  }
}
