import 'package:ecommerce_store/common/widgets/loaders/animation_loader.dart';
import 'package:ecommerce_store/utils/constants/app_colors.dart';
import 'package:ecommerce_store/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FullScreenLoader {
  static void openLoadingDialog(String text, String animation) {
    showDialog(
      barrierDismissible: false,
      context: Get.overlayContext!,
      builder: (_) => PopScope(
        canPop: false,
        child: Container(
          color: HelperFunction.isDarkMode(Get.context!)
              ? AppColors.dark
              : AppColors.light,
          height: double.infinity,
          width: double.infinity,
          child: Column(
            children: [
              const SizedBox(height: 250),
              AnimationLoader(
                text: text,
                animation: animation,
              ),
            ],
          ),
        ),
      ),
    );
  }

  //stop currently open loading dialog
  //this method doesn't return anything
  static stopLoading() {
    Navigator.of(Get.overlayContext!).pop();
  }
}
