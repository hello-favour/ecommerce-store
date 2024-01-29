import 'package:ecommerce_store/common/styles/rounded_container.dart';
import 'package:ecommerce_store/common/widgets/appbar/appbar.dart';
import 'package:ecommerce_store/common/widgets/products/cart/cart_item.dart';
import 'package:ecommerce_store/common/widgets/products/cart/coupon_widgets.dart';
import 'package:ecommerce_store/common/widgets/success_screen/success_screen.dart';
import 'package:ecommerce_store/features/personalization/screens/checkout/widgets/billing_address_section.dart';
import 'package:ecommerce_store/features/personalization/screens/checkout/widgets/billing_amount_section.dart';
import 'package:ecommerce_store/features/personalization/screens/checkout/widgets/billing_payment_section.dart';
import 'package:ecommerce_store/navigation_menu.dart';
import 'package:ecommerce_store/utils/constants/app_colors.dart';
import 'package:ecommerce_store/utils/constants/app_image.dart';
import 'package:ecommerce_store/utils/constants/sizes.dart';
import 'package:ecommerce_store/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckOutScreen extends StatelessWidget {
  const CheckOutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isDarkMode(context);
    return Scaffold(
      appBar: MyAppBar(
        showBackArrow: true,
        title: Text(
          "Order Review",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              //items in cart
              const CartItem(),
              const SizedBox(height: AppSizes.spaceBtwSections),

              //coupon textfield
              const CouponCode(),
              const SizedBox(height: AppSizes.spaceBtwSections),

              //Billing section
              RoundedContainer(
                showBorder: true,
                padding: const EdgeInsets.all(AppSizes.md),
                backgroundColor: dark ? AppColors.black : AppColors.white,
                child: const Column(
                  children: [
                    //Pricing
                    BillingAmountSection(),
                    SizedBox(height: AppSizes.spaceBtwItems),

                    //Divider
                    Divider(),
                    SizedBox(height: AppSizes.spaceBtwItems),

                    //Payment methods
                    BillingPaymentSection(),
                    SizedBox(height: AppSizes.spaceBtwItems),

                    //Address
                    BillingAddressSection(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(AppSizes.defaultSpace),
        child: ElevatedButton(
            onPressed: () => Get.to(SuccessScreen(
                  image: AppImages.succefulPaymentIcon,
                  onPressed: () => Get.offAll(const NavigationMenu()),
                  subTitle: 'Your item will be shipped soon!',
                  title: 'Payment Success',
                )),
            child: const Text("Checkout \$256.0")),
      ),
    );
  }
}
