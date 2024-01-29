import 'package:ecommerce_store/common/widgets/texts/section_heading.dart';
import 'package:ecommerce_store/utils/constants/app_colors.dart';
import 'package:ecommerce_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class BillingAddressSection extends StatelessWidget {
  const BillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SeactionHeading(
          title: "Shipping Address",
          buttonTitle: "Change",
          onPressed: () {},
        ),
        Text("Coding with T", style: Theme.of(context).textTheme.bodyLarge),
        const SizedBox(width: AppSizes.spaceBtwItems / 2),
        Row(
          children: [
            const Icon(
              Icons.phone,
              color: AppColors.grey,
              size: 16,
            ),
            const SizedBox(width: AppSizes.spaceBtwItems),
            Text(
              "+234 903 399 82852",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        const SizedBox(width: AppSizes.spaceBtwItems / 2),
        Row(
          children: [
            const Icon(
              Icons.location_history,
              color: AppColors.grey,
              size: 16,
            ),
            const SizedBox(width: AppSizes.spaceBtwItems),
            Expanded(
              child: Text(
                "South Liana, Marine 87695, USA",
                style: Theme.of(context).textTheme.bodyMedium,
                softWrap: true,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
