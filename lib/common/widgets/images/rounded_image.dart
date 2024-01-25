
import 'package:ecommerce_store/utils/constants/app_colors.dart';
import 'package:ecommerce_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class RoundedImage extends StatelessWidget {
  final double? width, height;
  final String imageUrl;
  final bool applyImageRadius;
  final BoxBorder? border;
  final Color background;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onPressed;
  final double? borderRadius;
  
  const RoundedImage(
      {super.key,
      this.width,
      this.height,
      required this.imageUrl,
      this.applyImageRadius = true,
      this.border,
      this.background = AppColors.light,
      this.fit = BoxFit.contain,
      this.padding,
      this.isNetworkImage = false,
      this.onPressed,
      this.borderRadius = AppSizes.md});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: height,
        width: width,
        padding: padding,
        decoration: BoxDecoration(
            border: border, borderRadius: BorderRadius.circular(AppSizes.md)),
        child: ClipRRect(
          borderRadius: applyImageRadius
              ? BorderRadius.circular(AppSizes.md)
              : BorderRadius.zero,
          child: Image(
            image: isNetworkImage
                ? NetworkImage(imageUrl)
                : AssetImage(imageUrl) as ImageProvider,
            fit: fit,
          ),
        ),
      ),
    );
  }
}
