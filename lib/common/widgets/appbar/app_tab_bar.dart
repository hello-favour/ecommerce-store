import 'package:ecommerce_store/utils/constants/app_colors.dart';
import 'package:ecommerce_store/utils/device/device_utility.dart';
import 'package:ecommerce_store/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class AppTabBar extends StatelessWidget implements PreferredSizeWidget {
  final List<Widget> tabs;
  const AppTabBar({super.key, required this.tabs});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isDarkMode(context);
    return Material(
      color: dark ? AppColors.black : AppColors.white,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        indicatorColor: AppColors.primaryColor,
        labelColor: dark ? AppColors.white : AppColors.primaryColor,
        unselectedLabelColor: AppColors.darkGrey,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize =>
      Size.fromHeight(DeviceUserUtility.getAppBarHeight());
}
