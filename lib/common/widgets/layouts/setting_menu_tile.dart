import 'package:ecommerce_store/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';

class SettingMenuTile extends StatelessWidget {
  final String title, subTitle;
  final IconData icon;
  final Widget? trailing;
  final VoidCallback? onTap;
  const SettingMenuTile({
    super.key,
    required this.title,
    required this.subTitle,
    required this.icon,
    this.trailing,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: Icon(
        icon,
        size: 28,
        color: AppColors.primaryColor,
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.titleMedium,
      ),
      subtitle: Text(
        subTitle,
        style: Theme.of(context).textTheme.labelMedium,
      ),
      trailing: trailing,
    );
  }
}
