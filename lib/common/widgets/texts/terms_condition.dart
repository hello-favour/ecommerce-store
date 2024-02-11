import 'package:ecommerce_store/features/authentication/screens/signup/signup_controller.dart';
import 'package:ecommerce_store/utils/constants/app_colors.dart';
import 'package:ecommerce_store/utils/constants/sizes.dart';
import 'package:ecommerce_store/utils/constants/text_string.dart';
import 'package:ecommerce_store/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class TermsAndConditionCheckbox extends StatelessWidget {
  const TermsAndConditionCheckbox({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = SignupController.instance;
    final dark = HelperFunction.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
          height: 24,
          width: 24,
          child: Checkbox(
            value: controller.privacyPolicy.value,
            onChanged: (value) => controller.privacyPolicy.value =
                !controller.privacyPolicy.value,
          ),
        ),
        const SizedBox(width: AppSizes.spaceBtwItems),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                  text: "${TextString.iAgreeTo}",
                  style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                text: "${TextString.privacyPolicy}",
                style: Theme.of(context).textTheme.bodySmall!.apply(
                      color: dark ? AppColors.white : AppColors.primaryColor,
                      decoration: TextDecoration.underline,
                      decorationColor:
                          dark ? AppColors.white : AppColors.primaryColor,
                    ),
              ),
              TextSpan(
                  text: "${TextString.and}",
                  style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                text: "${TextString.termsOfUse}",
                style: Theme.of(context).textTheme.bodySmall!.apply(
                      color: dark ? AppColors.white : AppColors.primaryColor,
                      decoration: TextDecoration.underline,
                      decorationColor:
                          dark ? AppColors.white : AppColors.primaryColor,
                    ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
