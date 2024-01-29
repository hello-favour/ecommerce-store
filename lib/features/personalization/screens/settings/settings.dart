import 'package:ecommerce_store/common/widgets/appbar/appbar.dart';
import 'package:ecommerce_store/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:ecommerce_store/common/widgets/layouts/list_tiles.dart';
import 'package:ecommerce_store/common/widgets/layouts/setting_menu_tile.dart';
import 'package:ecommerce_store/common/widgets/texts/section_heading.dart';
import 'package:ecommerce_store/features/personalization/screens/address/address.dart';
import 'package:ecommerce_store/features/shop/screens/order/order.dart';
import 'package:ecommerce_store/utils/constants/app_colors.dart';
import 'package:ecommerce_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //HEADER
            PrimaryHeaderContainer(
              child: Column(
                children: [
                  MyAppBar(
                    title: Text(
                      "Account",
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .apply(color: AppColors.white),
                    ),
                  ),
                  const UserProfileTitle(),
                  const SizedBox(height: AppSizes.spaceBtwSections),
                ],
              ),
            ),
            //BODY
            Padding(
              padding: const EdgeInsets.all(AppSizes.defaultSpace),
              child: Column(
                children: [
                  //ACCOUNT SETTING
                  const SeactionHeading(title: "Account Settings"),
                  const SizedBox(height: AppSizes.spaceBtwItems),
                  SettingMenuTile(
                    title: "My Address",
                    subTitle: "Set shopping delivery address",
                    icon: Iconsax.safe_home,
                    onTap: () {
                      Get.to(const UserAddressScreen());
                    },
                  ),
                  SettingMenuTile(
                    title: "My Cart",
                    subTitle: "Add remove products and move to checkout",
                    icon: Iconsax.shopping_cart,
                    onTap: () {
                      Get.to(const OrderScreen());
                    },
                  ),
                  SettingMenuTile(
                    title: "My Orders",
                    subTitle: "In-progress and completed orders",
                    icon: Iconsax.bag_tick,
                    onTap: () {},
                  ),
                  SettingMenuTile(
                    title: "Bank Account",
                    subTitle: "Withdraw balance to registered bank account",
                    icon: Iconsax.bank,
                    onTap: () {},
                  ),
                  SettingMenuTile(
                    title: "My Coupons",
                    subTitle: "List of all discounted coupons",
                    icon: Iconsax.discount_shape,
                    onTap: () {},
                  ),
                  SettingMenuTile(
                    title: "Notification",
                    subTitle: "Set any kind of notification message",
                    icon: Iconsax.notification,
                    onTap: () {},
                  ),
                  SettingMenuTile(
                    title: "Account Privacy",
                    subTitle: "Manage data usage and connected accounts",
                    icon: Iconsax.security_card,
                    onTap: () {},
                  ),

                  //APP SETTINGS
                  const SizedBox(height: AppSizes.spaceBtwItems),
                  const SeactionHeading(
                    title: "App Settings",
                    showActionButton: false,
                  ),
                  const SizedBox(height: AppSizes.spaceBtwItems),
                  SettingMenuTile(
                    title: "Load data",
                    subTitle: "Upload data to your cloud firebase",
                    icon: Iconsax.document_upload,
                    onTap: () {},
                  ),
                  SettingMenuTile(
                    title: "Geolocation",
                    subTitle: "Set recommendation based location",
                    icon: Iconsax.location,
                    onTap: () {},
                  ),
                  SettingMenuTile(
                    title: "Safe Mode",
                    subTitle: "Search result is safe for all age",
                    icon: Iconsax.security_user,
                    onTap: () {},
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),
                  SettingMenuTile(
                    title: "HD Image Quality",
                    subTitle: "Set image quality to be seen",
                    icon: Iconsax.image,
                    onTap: () {},
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),

                  //LOGOUT BUTTON
                  const SizedBox(height: AppSizes.spaceBtwItems),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                        onPressed: () {}, child: const Text("Logout")),
                  ),
                  const SizedBox(height: AppSizes.spaceBtwSections * 2.5),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
