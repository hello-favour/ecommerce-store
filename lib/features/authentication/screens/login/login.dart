import 'package:ecommerce_store/common/styles/spacing_styles.dart';
import 'package:ecommerce_store/common/widgets/social_button.dart';
import 'package:ecommerce_store/features/authentication/screens/login/widgets/login_form.dart';
import 'package:ecommerce_store/features/authentication/screens/login/widgets/login_header.dart';
import 'package:ecommerce_store/utils/constants/app_colors.dart';
import 'package:ecommerce_store/utils/constants/text_string.dart';
import 'package:ecommerce_store/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: SpacingStyles.paddingWidthAppBarHeight,
          child: Column(
            children: [
              //LOGO
              AppLoginHeader(dark: dark),
              //FORM
              const AppLoginForm(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Divider(
                      color: dark ? AppColors.darkGrey : AppColors.grey,
                      thickness: 0.5,
                      indent: 60,
                      endIndent: 5,
                    ),
                  ),
                  Text(
                    TextString.orSignInWidth.capitalize!,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  Flexible(
                    child: Divider(
                      color: dark ? AppColors.darkGrey : AppColors.grey,
                      thickness: 0.5,
                      indent: 5,
                      endIndent: 60,
                    ),
                  ),
                ],
              ),
              const AppSocialButton(),
            ],
          ),
        ),
      ),
    );
  }
}
