import 'package:flutter/material.dart';
import '../Colors/colors_pallete.dart';

mixin customDarkTheme {
  ThemeData darkTheme = ThemeData(
    colorScheme: const ColorScheme(
      brightness: Brightness.dark,
      primary: AppColors.primaryColor,
      onPrimary: AppColors.whiteColor,
      secondary: AppColors.secondaryColor,
      onSecondary: AppColors.whiteColor,
      error: AppColors.errorColor,
      onError: AppColors.whiteColor,
      background: AppColors.blackColor,
      onBackground: AppColors.whiteColor,
      surface: AppColors.blackColor,
      onSurface: AppColors.whiteColor,
      outline: AppColors.outlineDarkColor,
      surfaceTint: AppColors.successColor,
    ),
  );
}
