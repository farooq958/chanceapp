import 'package:chance/SRC/Data/Resources/Colors/colors_pallete.dart';
import 'package:chance/SRC/Data/Resources/Styles/app_textstyles.dart';
import 'package:flutter/material.dart';


mixin customLightTheme {
  ThemeData lightTheme = ThemeData(
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: AppColors.primaryColor,
      tertiary: AppColors.tertiaryColor,
      onPrimary: AppColors.whiteColor,
      secondary: AppColors.secondaryColor,
      onSecondary: AppColors.whiteColor,
      error: AppColors.errorColor,
      onError: AppColors.whiteColor,
      surface: AppColors.whiteColor,
     // onBackground: AppColors.blackColor,
     // surface: AppColors.inputColor,
      onSurface: AppColors.darkColor,
      outline: AppColors.lightColor,
      surfaceTint: AppColors.successColor,
    ),
    textTheme: TextTheme(

      displayLarge: AppTextStyles.manropiBold(fontSize: 25,color: Colors.black,fontWeight: null),
        displayMedium: AppTextStyles.manropiBold(fontSize: 22,color: Colors.black,fontWeight: null),
        displaySmall: AppTextStyles.manropiBold(fontSize: 20,color: Colors.black,fontWeight: null),
      bodyLarge: AppTextStyles.manropiMedium(fontSize: 18,color: Colors.black,fontWeight: null),
      bodyMedium: AppTextStyles.manropiRegular(fontSize: 16,color: Colors.black,fontWeight: null),
      bodySmall: AppTextStyles.manropiRegular(fontSize: 12,color: Colors.black,fontWeight: null),


    )
  );
}
