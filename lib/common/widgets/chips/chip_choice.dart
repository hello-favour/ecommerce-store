import 'package:ecommerce_store/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:ecommerce_store/utils/constants/app_colors.dart';
import 'package:ecommerce_store/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class ChipChoice extends StatelessWidget {
  final String text;
  final bool selected;
  final void Function(bool)? onSelected;
  const ChipChoice({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    final isColor = HelperFunction.getColor(text) != null;
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
        label: isColor ? const SizedBox() : Text(text),
        selected: selected,
        onSelected: onSelected,
        labelStyle: TextStyle(color: selected ? AppColors.white : null),
        avatar: isColor
            ? CircularContainer(
                height: 50,
                width: 50,
                backGroundColor: HelperFunction.getColor(text)!)
            : null,
        shape: isColor ? const CircleBorder() : null,
        labelPadding: const EdgeInsets.all(0),
        padding: isColor ? const EdgeInsets.all(0) : null,
        backgroundColor: isColor ? HelperFunction.getColor(text)! : null,
      ),
    );
  }
}
