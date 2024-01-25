import 'package:ecommerce_store/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:ecommerce_store/common/widgets/custom_shapes/curved_edges/curved_edges_widgets.dart';
import 'package:ecommerce_store/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';

class PrimaryHeaderContainer extends StatelessWidget {
  const PrimaryHeaderContainer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return CurvedEdgeWidget(
      child: Container(
        color: AppColors.primaryColor,
        padding: const EdgeInsets.all(0),
        child: SizedBox(
          height: 400,
          child: Stack(
            children: [
              Positioned(
                right: -250,
                top: -150,
                child: CircularContainer(
                  backGroundColor: AppColors.textWhite.withOpacity(0.1),
                ),
              ),
              CircularContainer(
                backGroundColor: AppColors.textWhite.withOpacity(0.1),
              ),
              child,
            ],
          ),
        ),
      ),
    );
  }
}
