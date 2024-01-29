import 'package:ecommerce_store/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get_storage/get_storage.dart';

Future<void> main() async {
  // final WidgetsBinding widgetsBinding =
  //     WidgetsFlutterBinding.ensureInitialized();

  //GETX STORAGE
  // await GetStorage.init();

  //AWAIT SPLASH SCREEN BEFORE OTHER ITEMS
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  // await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
  //     .then(
  //   (FirebaseApp value) => Get.put(AuthenticationRepository()),
  // );

  runApp(const MyApp());
}
