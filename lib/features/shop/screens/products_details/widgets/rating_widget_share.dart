
import 'package:ecommerce_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class RatingAndShare extends StatelessWidget {
  const RatingAndShare({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        //Rating
        Row(
          children: [
            const Icon(Iconsax.star5,
                color: Colors.amber, size: 24),
            const SizedBox(width: AppSizes.spaceBtwItems / 2),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                      text: "5,00",
                      style:
                          Theme.of(context).textTheme.bodyLarge),
                  const TextSpan(text: "(199)"),
                ],
              ),
            ),
          ],
        ),
        //Share button
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.share, size: AppSizes.iconMd),
        ),
      ],
    );
  }
}
