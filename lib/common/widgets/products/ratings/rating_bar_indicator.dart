import 'package:ecommerce_store/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';

class AppRatingBarIndicator extends StatelessWidget {
  final double rating;
  const AppRatingBarIndicator({super.key, required this.rating});

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      rating: rating,
      unratedColor: AppColors.grey,
      itemSize: 20,
      itemBuilder: (_, __) => const Icon(
        Iconsax.star1,
        color: AppColors.primaryColor,
      ),
    );
  }
}
