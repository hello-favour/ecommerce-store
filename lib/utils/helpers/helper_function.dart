import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class HelperFunction {
  static Color? getColor(String value) {
    if (value == "green") {
      return Colors.green;
    } else if (ValueKey == "Red") {
      return Colors.red;
    } else if (ValueKey == "Blue") {
      return Colors.blue;
    } else if (ValueKey == "Pink") {
      return Colors.pink;
    } else if (ValueKey == "Grey") {
      return Colors.grey;
    } else if (ValueKey == "Purple") {
      return Colors.purple;
    } else if (ValueKey == "Black") {
      return Colors.black;
    } else if (ValueKey == "White") {
      return Colors.white;
    } else if (ValueKey == "Teal") {
      return Colors.teal;
    } else if (ValueKey == "Indigo") {
      return Colors.indigo;
    } else if (ValueKey == "Brown") {
      return Colors.brown;
    } else if (ValueKey == "Yellow") {
      return Colors.yellow;
    } else if (ValueKey == "Orange") {
      return Colors.orange;
    } else {
      return null;
    }
  }

  static void showSnackBar(String message) {
    ScaffoldMessenger.of(Get.context!).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  static void showAlert(String title, String message) {
    showDialog(
      context: Get.context!,
      builder: (context) {
        return AlertDialog(
          title: Text(title),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text("Ok"),
            ),
          ],
        );
      },
    );
  }

  static void navigateToScreen(BuildContext context, Widget screen) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => screen));
  }

  static String truncateText(String text, int maxLength) {
    if (text.length <= maxLength) {
      return text;
    } else {
      return "${text.substring(0, maxLength)}...";
    }
  }

  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }

  static Size screenSize() {
    return MediaQuery.of(Get.context!).size;
  }

  static double screenHeight() {
    return MediaQuery.of(Get.context!).size.height;
  }

  static double screenWidth() {
    return MediaQuery.of(Get.context!).size.width;
  }

  static String getFormattedDate(DateTime date,
      {String format = "dd-MMM-yyy"}) {
    return DateFormat(format).format(date);
  }

  static List<T> removeDuplicates<T>(List<T> list) {
    return list.toSet().toList();
  }

  static List<Widget> wrapWidgets(List<Widget> widgets, int rowSize) {
    final wrappedList = <Widget>[];
    for (var i = 0; i < widgets.length; i += rowSize) {
      final rowChildren = widgets.sublist(
          i, i + rowSize > widgets.length ? widgets.length : i + rowSize);
      wrappedList.add(Row(
        children: rowChildren,
      ));
    }
    return wrappedList;
  }
}
