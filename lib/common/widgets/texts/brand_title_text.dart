import 'package:ecommerce_store/utils/constants/enum.dart';
import 'package:flutter/material.dart';

class BrandTitleText extends StatelessWidget {
  final Color? color;
  final String title;
  final int maxLines;
  final TextAlign? textAlign;
  final Textsizes brandTextSize;
  const BrandTitleText({
    super.key,
    this.color,
    required this.title,
    this.maxLines = 1,
    this.textAlign = TextAlign.center,
    this.brandTextSize = Textsizes.small,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: brandTextSize == Textsizes.small
          ? Theme.of(context).textTheme.labelMedium!.apply(color: color)
          : brandTextSize == Textsizes.medium
              ? Theme.of(context).textTheme.bodyLarge!.apply(color: color)
              : brandTextSize == Textsizes.large
                  ? Theme.of(context).textTheme.titleLarge!.apply(color: color)
                  : Theme.of(context).textTheme.bodyLarge!.apply(color: color),
    );
  }
}
