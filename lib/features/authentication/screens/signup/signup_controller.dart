import 'package:ecommerce_store/common/widgets/loaders/app_loader.dart';
import 'package:ecommerce_store/network_manager.dart';
import 'package:ecommerce_store/utils/constants/app_image.dart';
import 'package:ecommerce_store/utils/popups/full_screen_loader.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  //Variables
  final privacyPolicy = true.obs;
  final hidePassword = true.obs;
  final email = TextEditingController();
  final userName = TextEditingController();
  final lastName = TextEditingController();
  final password = TextEditingController();
  final firstName = TextEditingController();
  final phoneNumber = TextEditingController();
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

  //SIGNUP
  Future<void> signUp() async {
    try {
      //start loading
      FullScreenLoader.openLoadingDialog(
          "We are processing your information...", AppImages.pumaBrand);

      //check internet connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) return;

      //form validation
      if (!signupFormKey.currentState!.validate()) return;

      //privacy policy check
      if (privacyPolicy.value) {
        AppLoader.warningSnackBar(
            title: "Accept privacy policy",
            message:
                "In order to create account, you must to read and accept the privacy and policy & terms of use");
        return;
      }
      //register user in the firebase auth & save user data in the firebase
      //save user auth in the firebase firestore
      //show success message
      //move to verify email screen
    } catch (e) {
      //show some generic errors to the user
      AppLoader.errorSnackBar(title: "On Snap!", message: e.toString());
    } finally {
      FullScreenLoader.stopLoading();
      //remove loader
    }
  }
}
