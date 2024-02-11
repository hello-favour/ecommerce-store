import 'package:ecommerce_store/features/authentication/screens/signup/signup_controller.dart';
import 'package:ecommerce_store/utils/constants/app_colors.dart';
import 'package:ecommerce_store/utils/constants/sizes.dart';
import 'package:ecommerce_store/utils/constants/text_string.dart';
import 'package:ecommerce_store/utils/helpers/helper_function.dart';
import 'package:ecommerce_store/utils/validators/validator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isDarkMode(context);
    final controller = Get.put(SignupController());
    return Form(
      key: controller.signupFormKey,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  controller: controller.firstName,
                  validator: (value) =>
                      AppValidator.validateEmptyText("First name", value),
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: TextString.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              const SizedBox(
                width: AppSizes.spaceBtwInputFields,
              ),
              Expanded(
                child: TextFormField(
                  validator: (value) =>
                      AppValidator.validateEmptyText("Last name", value),
                  controller: controller.lastName,
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: TextString.lastName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: AppSizes.spaceBtwInputFields,
          ),
          Expanded(
            child: TextFormField(
              validator: (value) =>
                  AppValidator.validateEmptyText("Username", value),
              controller: controller.userName,
              expands: false,
              decoration: const InputDecoration(
                labelText: TextString.userName,
                prefixIcon: Icon(Iconsax.user_edit),
              ),
            ),
          ),
          Expanded(
            child: TextFormField(
              validator: (value) => AppValidator.validateEmail(value),
              controller: controller.email,
              expands: false,
              decoration: const InputDecoration(
                labelText: TextString.email,
                prefixIcon: Icon(Iconsax.direct),
              ),
            ),
          ),
          const SizedBox(
            height: AppSizes.spaceBtwInputFields,
          ),
          Expanded(
            child: TextFormField(
              validator: (value) => AppValidator.validatePhoneNumber(value!),
              controller: controller.phoneNumber,
              expands: false,
              decoration: const InputDecoration(
                labelText: TextString.phoneNo,
                prefixIcon: Icon(Iconsax.call),
              ),
            ),
          ),
          const SizedBox(
            height: AppSizes.spaceBtwInputFields,
          ),
          Obx(
            () => TextFormField(
              validator: (value) => AppValidator.validatePassword(value),
              controller: controller.password,
              obscureText: true,
              decoration: InputDecoration(
                labelText: TextString.password,
                prefixIcon: const Icon(Iconsax.password_check),
                suffixIcon: IconButton(
                  onPressed: () => controller.hidePassword.value =
                      !controller.hidePassword.value,
                  icon: Icon(
                    !controller.hidePassword.value
                        ? Iconsax.eye_slash
                        : Iconsax.eye,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: AppSizes.spaceBtwSections,
          ),
          Row(
            children: [
              SizedBox(
                height: 24,
                width: 24,
                child: Checkbox(
                  value: true,
                  onChanged: (value) {},
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
                        text: "${TextString.privacyPolicy} ",
                        style: Theme.of(context).textTheme.bodyMedium!.apply(
                            color:
                                dark ? AppColors.white : AppColors.primaryColor,
                            decoration: TextDecoration.underline,
                            decorationColor: dark
                                ? AppColors.white
                                : AppColors.primaryColor)),
                    TextSpan(
                        text: "${TextString.and} ",
                        style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(
                        text: "${TextString.privacyPolicy} ",
                        style: Theme.of(context).textTheme.bodyMedium!.apply(
                            color:
                                dark ? AppColors.white : AppColors.primaryColor,
                            decoration: TextDecoration.underline,
                            decorationColor: dark
                                ? AppColors.white
                                : AppColors.primaryColor)),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSizes.spaceBtwSections),
          //sign up
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => controller.signUp(),
              child: const Text(TextString.createAccount),
            ),
          ),
        ],
      ),
    );
  }
}
