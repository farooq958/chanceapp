import 'package:chance/SRC/Data/Resources/Colors/colors_pallete.dart';
import 'package:chance/SRC/Data/Resources/Styles/app_textstyles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class WidgetFunctions {
  WidgetFunctions._private();

  static final instance = WidgetFunctions._private();

  showErrorSnackBar({String? error, required BuildContext context}) {
    WidgetFunctions.instance.snackBar(context,
        text: error,
      //  bgColor: AppColors.primaryColor,
        textStyle:
            AppTextStyles.manropiRegular( color: Colors.white));
  }

  Future<ScaffoldFeatureController<SnackBar, SnackBarClosedReason>> snackBar(
      BuildContext context,
      {String? text,
      Color? bgColor,
      TextStyle? textStyle}) async {
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(
        text ?? "",
        style: textStyle ??
            AppTextStyles.manropiMedium( color: AppColors.whiteColor),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      duration: const Duration(seconds: 2),
     backgroundColor: bgColor ?? AppColors.primaryColor,
      behavior: SnackBarBehavior.floating,
      shape: Theme.of(context).snackBarTheme.shape,
    ));
  }

  Future<ScaffoldFeatureController<SnackBar, SnackBarClosedReason>> toast(
      BuildContext context, SnackBar snackBar) async {
    return ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  button(
    BuildContext context, {
    required Widget child,
    double hPadding = 20,
    double vPadding = 2,
    required void Function()? onPressed,
    Color? color,
  }) =>
      Padding(
        padding: EdgeInsets.symmetric(horizontal: hPadding, vertical: vPadding),
        child: CupertinoButton(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          onPressed: onPressed,
          color: color ?? Theme.of(context).buttonTheme.colorScheme!.background,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              child,
            ],
          ),
        ),
      );



}
