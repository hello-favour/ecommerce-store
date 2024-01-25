import 'package:ecommerce_store/common/widgets/appbar/appbar.dart';
import 'package:ecommerce_store/common/widgets/images/circular_image.dart';
import 'package:ecommerce_store/common/widgets/texts/section_heading.dart';
import 'package:ecommerce_store/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:ecommerce_store/utils/constants/app_image.dart';
import 'package:ecommerce_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
        title: Text("Profile"),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              //PROFILE PICTURE
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const CircularImage(
                      image: AppImages.user,
                      height: 80,
                      width: 80,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text("Change Profile Picture"),
                    ),
                  ],
                ),
              ),
              //DETAILS
              const SizedBox(height: AppSizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: AppSizes.spaceBtwItems),
              const SeactionHeading(
                title: "Profile Information",
                showActionButton: false,
              ),
              const SizedBox(height: AppSizes.spaceBtwItems),
              ProfileMenu(
                  onPressed: () {}, title: "Name", value: "Coding with F"),
              ProfileMenu(
                  onPressed: () {}, title: "Username", value: "Coding with F"),

              const SizedBox(height: AppSizes.spaceBtwItems),
              const Divider(),
              const SizedBox(height: AppSizes.spaceBtwItems),

              //HEADING PERSONAL INFO
              const SeactionHeading(
                title: "Personal Information",
                showActionButton: false,
              ),
              const SizedBox(height: AppSizes.spaceBtwItems),

              ProfileMenu(
                onPressed: () {},
                title: "User ID",
                value: "45689",
                icon: Iconsax.copy,
              ),
              ProfileMenu(
                  onPressed: () {}, title: "E-mail", value: "Coding with t"),
              ProfileMenu(
                  onPressed: () {},
                  title: "Phone number",
                  value: "+234-903-9982852"),
              ProfileMenu(onPressed: () {}, title: "Gender", value: "Male"),
              ProfileMenu(
                  onPressed: () {},
                  title: "Date of Birth",
                  value: "18 july, 2000"),

              const Divider(),
              const SizedBox(height: AppSizes.spaceBtwItems),

              Center(
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Close account",
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
