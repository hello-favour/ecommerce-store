// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBKHxV0pwVD29p6A8LHZ4aVSNo7aFrL5vM',
    appId: '1:855252400858:web:c500385dc0ba675e0b03e3',
    messagingSenderId: '855252400858',
    projectId: 'ecommerce-store-1f27c',
    authDomain: 'ecommerce-store-1f27c.firebaseapp.com',
    storageBucket: 'ecommerce-store-1f27c.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBfJ9KEvWtlGa9XApCeMLejtAiFgQId0ZM',
    appId: '1:855252400858:android:4ee2b8677b0313bc0b03e3',
    messagingSenderId: '855252400858',
    projectId: 'ecommerce-store-1f27c',
    storageBucket: 'ecommerce-store-1f27c.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCBdH2hjigqr09eqsEz1v1yxMdZ8Yxq0qw',
    appId: '1:855252400858:ios:e0994adc04c2534e0b03e3',
    messagingSenderId: '855252400858',
    projectId: 'ecommerce-store-1f27c',
    storageBucket: 'ecommerce-store-1f27c.appspot.com',
    iosBundleId: 'com.example.ecommerceStore',
  );
}
