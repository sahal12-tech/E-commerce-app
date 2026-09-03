import 'package:flutter/material.dart';
import 'package:flutter_catelog_page/util/theme/custom_themes/text_theme.dart';
import 'package:flutter_catelog_page/util/theme/custom_themes/appbar_theme.dart';
import 'package:flutter_catelog_page/util/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:flutter_catelog_page/util/theme/custom_themes/checkbox_theme.dart';
import 'package:flutter_catelog_page/util/theme/custom_themes/chip_theme.dart';
import 'package:flutter_catelog_page/util/theme/custom_themes/elevated_button_theme.dart';
import 'package:flutter_catelog_page/util/theme/custom_themes/outlined_button_theme.dart';
import 'package:flutter_catelog_page/util/theme/custom_themes/text_field_theme.dart';
import '../../../../util/constants/colors.dart';

class EApptheme{
  EApptheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: EColors.primary,
    scaffoldBackgroundColor: Colors.white,
    textTheme: ETextTheme.lightTextTheme,
    chipTheme: EChipTheme.lightChipTheme,
    appBarTheme: EAppBarTheme.lightAppBarTheme,
    bottomSheetTheme: EBottomSheetTheme.lightBottomSheetTheme,
    checkboxTheme: ECheckboxTheme.lightCheckboxTheme,
    elevatedButtonTheme: EElevatedButtonTheme.lightTheme,
    outlinedButtonTheme: EOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: ETextFormFeildTheme.lightInputDecorationTheme,


  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: EColors.primary,
    scaffoldBackgroundColor: Colors.black,
    textTheme: ETextTheme.darkTextTheme,
    chipTheme: EChipTheme.darkChipTheme,
    appBarTheme: EAppBarTheme.darkAppBarTheme,
    bottomSheetTheme: EBottomSheetTheme.darkBottomSheetTheme,
    checkboxTheme: ECheckboxTheme.darkCheckboxTheme,
    elevatedButtonTheme: EElevatedButtonTheme.darkTheme,
    outlinedButtonTheme: EOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: ETextFormFeildTheme.darkInputDecorationTheme,
  );
}
