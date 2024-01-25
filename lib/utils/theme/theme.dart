import 'package:ecommerce_store/utils/theme/custom_themes/appbar_theme.dart';
import 'package:ecommerce_store/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:ecommerce_store/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:ecommerce_store/utils/theme/custom_themes/chip_theme.dart';
import 'package:ecommerce_store/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:ecommerce_store/utils/theme/custom_themes/outline_button_theme.dart';
import 'package:ecommerce_store/utils/theme/custom_themes/text_field_theme.dart';
import 'package:ecommerce_store/utils/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  //LIGHT THEME
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    fontFamily: "Poppins",
    primaryColor: Colors.blue,
    chipTheme: AppChipTheme.lightChipTheme,
    scaffoldBackgroundColor: Colors.white,
    textTheme: AppTextTheme.lightTextTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: AppOutlineButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: APPTextFieldTheme.lightInputDecorationTheme,
    checkboxTheme: AppCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: AppBottomSheetTheme.lightBottomSheetTheme,
    appBarTheme: AppbarTheme.lightAppbarTheme,
  );

  //DARK THEME
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    fontFamily: "Poppins",
    primaryColor: Colors.blue,
    chipTheme: AppChipTheme.lightChipTheme,
    scaffoldBackgroundColor: Colors.white,
    textTheme: AppTextTheme.lightTextTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: AppOutlineButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: APPTextFieldTheme.darkInputDecorationTheme,
    checkboxTheme: AppCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: AppBottomSheetTheme.darkBottomSheetTheme,
    appBarTheme: AppbarTheme.darkAppbarTheme,
  );
}
