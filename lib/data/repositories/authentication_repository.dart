import 'package:ecommerce_store/features/authentication/screens/login/login.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  //VARIABLES
  final deviceStorage = GetStorage();

  //CALLED FROM MAIN.DART ON APP LAUNCH
  @override
  void onReady() {
    super.onReady();
    FlutterNativeSplash.remove();
    screenRedirect();
  }

  //FUNCTION TO SHOW RELEVANT SCREEN
  screenRedirect() async {
    if (kDebugMode) {
      print("========= GET STORAGE Auth Repo ===========");
      print(deviceStorage.read("IsFirstTime"));
    }
    deviceStorage.writeIfNull("IsFirstTime", true);
    deviceStorage.read("IsFirstTime") != true
        ? Get.offAll(() => const LoginScreen())
        : Get.offAll(
            //const
            //OnboardingScreen()
            null);
  }
}
