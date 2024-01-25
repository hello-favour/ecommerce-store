import 'package:ecommerce_store/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';

class CircularContainer extends StatelessWidget {
  final double? width;
  final double? height;
  final double radius;
  final double padding;
  final Widget? child;
  final Color backGroundColor;
  final EdgeInsets? margin;
  const CircularContainer({
    super.key,
    this.child,
    this.height = 400,
    this.backGroundColor = AppColors.white,
    this.padding = 0,
    this.radius = 400,
    this.width = 400,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: margin,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: backGroundColor,
      ),
    );
  }
}
