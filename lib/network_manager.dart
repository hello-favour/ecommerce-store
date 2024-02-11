import 'dart:async';
import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:ecommerce_store/common/widgets/loaders/app_loader.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class NetworkManager extends GetxController {
  static NetworkManager get instance => Get.find();

  final Connectivity _connectivity = Connectivity();
  late StreamSubscription<ConnectivityResult> _connectivitySubscription;
  final Rx<ConnectivityResult> _connectStatus = ConnectivityResult.none.obs;

  //initialize the network manager and set up a stream to continually check the connect status
  @override
  void onInit() {
    super.onInit();
    _connectivitySubscription =
        _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
  }

  Future<void> _updateConnectionStatus(ConnectivityResult result) async {
    _connectStatus.value = result;
    if (_connectStatus.value == ConnectivityResult.none) {
      AppLoader.warningSnackBar(title: "No internet connection");

      ///ur loading code here
      // loader.warningsnackbar(title:"No internet connection");
    }
  }

  //check the internet connection status
  //return true if connected false otherwise
  Future<bool> isConnected() async {
    try {
      final result = await _connectivity.checkConnectivity();
      if (result == ConnectivityResult.none) {
        return false;
      } else {
        return true;
      }
    } on PlatformException catch (_) {
      return false;
    }
  }

  //Dispose or close the active connectivity Stream
  @override
  void onClose() {
    super.onClose();
    _connectivitySubscription.cancel();
  }
}
