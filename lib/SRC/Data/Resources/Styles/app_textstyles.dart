import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  //
  static TextStyle manropiBold(
      {double? fontSize,
        BuildContext? context,
      Color? color,
      FontWeight? fontWeight,
      double? letterSpacing}) {
    return GoogleFonts.manrope(
        fontSize: fontSize ?? 15,
        letterSpacing: letterSpacing ?? 0,
        color: color,

        fontWeight: fontWeight ?? FontWeight.bold);
  }

  //
  static TextStyle manropiMedium(
      {double? fontSize,
        BuildContext? context,
      Color? color,
      FontWeight? fontWeight,
      double? letterSpacing}) {
    return GoogleFonts.manrope(
        fontSize: fontSize ?? 14,
        letterSpacing: letterSpacing ?? 0,
        color: color,
       // fontFamily: Assets.fontFamily.articoMedium,
        fontWeight: fontWeight ?? FontWeight.w500);
  }

  //
  static TextStyle manropiRegular(
      {double? fontSize,
        BuildContext? context,
      Color? color,
      FontWeight? fontWeight,
      double? letterSpacing}) {
    return GoogleFonts.manrope(
        fontSize: fontSize ?? 13,
        letterSpacing: letterSpacing ?? 0,
        color: color??Colors.black,
       // fontFamily: Assets.fontFamily.articoRegular,
        fontWeight: fontWeight ?? FontWeight.normal);
  }

//
  static TextStyle manropiLight(
      {double? fontSize,
        BuildContext? context,
      Color? color,
      FontWeight? fontWeight,
      double? letterSpacing}) {
    return GoogleFonts.manrope(
        fontSize: fontSize ?? 11,
        letterSpacing: letterSpacing ?? 0,
        color: color,
      //  fontFamily: Assets.fontFamily.articoLight,
        fontWeight: fontWeight ?? FontWeight.w300);
  }
}
