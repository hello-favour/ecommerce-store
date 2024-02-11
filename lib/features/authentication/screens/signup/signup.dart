import 'package:ecommerce_store/common/widgets/social_button.dart';
import 'package:ecommerce_store/features/authentication/screens/signup/signup_form.dart';
import 'package:ecommerce_store/utils/constants/sizes.dart';
import 'package:ecommerce_store/utils/constants/text_string.dart';
import 'package:ecommerce_store/utils/theme/custom_themes/form_divider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                TextString.signUpTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: AppSizes.spaceBtwSections,
              ),
              SignupForm(),
              //divider
              const SizedBox(height: AppSizes.spaceBtwSections),
              AppFormDivider(dividerText: TextString.orSignUpWidth.capitalize!),
              const SizedBox(height: AppSizes.spaceBtwSections),
              //social button
              const AppSocialButton(),
            ],
          ),
        ),
      ),
    );
  }
}
