import 'package:ecommerce_store/features/authentication/screens/login/login.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();

  //VARIABLES
  final pageController = PageController();
  Rx<int> currentIndex = 0.obs;

  //UPDATE CURRENT INDEX WHEN PAGE SCROLL
  void updatePageIndicator(index) => currentIndex.value = index;

  //JUMP TO THE SPECIFIC DOT SELECTED PAGE
  void dotNavigatingClick(index) {
    currentIndex.value = index;
    pageController.jumpTo(index);
  }

  //UPDATE CURRENT PAGE AND JUMP TO NEXT
  void nextPage() {
    if (currentIndex.value == 2) {
      final storage = GetStorage();

      if (kDebugMode) {
        print("========= GET STORAGE Next Button ===========");
        print(storage.read("IsFirstTime"));
      }

      storage.write("IsFirstTime", false);

      if (kDebugMode) {
        print("========= GET STORAGE Next Button ===========");
        print(storage.read("IsFirstTime"));
      }
      Get.offAll(const LoginScreen());
    } else {
      int page = currentIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  //UPDATE CURRENT PAGE AND JUMP TO THE LAST PAGE
  void skipPage() {}
}
