import 'package:ecommerce_store/common/widgets/appbar/appbar.dart';
import 'package:ecommerce_store/common/widgets/products/ratings/rating_bar_indicator.dart';
import 'package:ecommerce_store/features/shop/screens/product_reviews/widgets/rating_progress_indicator.dart';
import 'package:ecommerce_store/features/shop/screens/product_reviews/widgets/use_review_card.dart';
import 'package:ecommerce_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ProductReviews extends StatelessWidget {
  const ProductReviews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
        title: Text(
          "Review & Ratings",
          style: TextStyle(color: Colors.black),
        ),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                  "Rating and reviews are verified and are from people who user the same type of device that you use."),
              const SizedBox(height: AppSizes.spaceBtwItems),
              //Overall product rating()
              const OverAllProductRating(),
              const AppRatingBarIndicator(
                rating: 3.5,
              ),
              Text("12,611", style: Theme.of(context).textTheme.bodySmall),
              const SizedBox(height: AppSizes.spaceBtwItems),

              //use review card
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}
