import 'package:ecommerce_store/common/widgets/texts/brand_title_text.dart';
import 'package:ecommerce_store/utils/constants/app_colors.dart';
import 'package:ecommerce_store/utils/constants/enum.dart';
import 'package:ecommerce_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class BrandTitleWithVerficationIcon extends StatelessWidget {
  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final Textsizes brandTextSizes;

  const BrandTitleWithVerficationIcon({
    super.key,
    required this.title,
    this.maxLines = 1,
    this.textColor,
    this.iconColor = AppColors.primaryColor,
    this.textAlign = TextAlign.center,
    this.brandTextSizes = Textsizes.small,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: BrandTitleText(
            title: title,
            maxLines: maxLines,
            textAlign: textAlign,
            brandTextSize: brandTextSizes,
          ),
        ),
        const SizedBox(width: AppSizes.xs),
        const Icon(
          Iconsax.verify5,
          color: AppColors.primaryColor,
          size: AppSizes.iconXs,
        ),
      ],
    );
  }
}
