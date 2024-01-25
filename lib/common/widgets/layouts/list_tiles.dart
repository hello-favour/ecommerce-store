import 'package:ecommerce_store/common/widgets/images/circular_image.dart';
import 'package:ecommerce_store/utils/constants/app_colors.dart';
import 'package:ecommerce_store/utils/constants/app_image.dart';
import 'package:flutter/material.dart';

class UserProfileTitle extends StatelessWidget {
  final VoidCallback? onPressed;
  const UserProfileTitle({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPressed,
      leading: const CircularImage(
          image: AppImages.user, width: 50, height: 50, padding: 0),
      title: Text(
        "Coding with i",
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .apply(color: AppColors.white),
      ),
      subtitle: Text(
        "favour@gmail.com",
        style: Theme.of(context).textTheme.bodyMedium!.apply(
              color: AppColors.white,
            ),
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.edit),
        color: AppColors.white,
      ),
    );
  }
}
