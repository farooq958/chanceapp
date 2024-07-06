import 'package:chance/SRC/Application/Utils/Extensions/responsive_extention.dart';
import 'package:chance/SRC/Data/Resources/Styles/app_textstyles.dart';
import 'package:chance/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:google_fonts/google_fonts.dart';


import 'app_text.dart';

class AppTextField extends StatefulWidget {
  final TextEditingController controller;
  final String? hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool obscureText;
  final Color? filledColor;
  final TextInputType textInputType;
  final String? Function(String?)? validator;
  final bool isValid;
  final bool isBorderRequired;
  final String? titleText;
  final int? maxline;
  final TextStyle? hintStyle;
  final TextStyle? titleStyle;
  final String? validateText;
  final bool? isShadowRequired;
  final Color? titleTextColor;
  final double? suffixWidth;
  final double? suffixHeight;
  final ValueChanged? onChanged;
  final GestureTapCallback? onTap;
  final bool? readOnly;
  final FocusNode? focusNode;
  final Color? hintTextColor;
  final double? height;
  final bool? isState;
  final String? labelText;
  final double? prefixWidth;
  final EdgeInsets? contentPadding;
  final TextCapitalization? textCapitalization;

  const AppTextField(
      {super.key,
      required this.controller,
      this.hintText,
      this.obscureText = false,
      required this.textInputType,
      this.suffixIcon,
      this.validator,
      this.prefixIcon,
      this.isValid = false,
      this.isBorderRequired = true,
      this.titleText = "",
      this.maxline = 1,
      this.labelText,
      this.validateText,
      this.isShadowRequired = false,
      this.titleTextColor,
      this.suffixWidth = 15,
      this.suffixHeight = 15,
      this.onChanged,
      this.contentPadding,
      this.onTap,
      this.readOnly,
      this.focusNode,
      this.hintTextColor,
      this.borderRadius,
      this.height,
      this.filledColor,
      this.hintStyle,
      this.isState,
      this.titleStyle,
      this.prefixWidth, this.textCapitalization});

  final double? borderRadius;

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

bool isHide = true;

class _AppTextFieldState extends State<AppTextField> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // print(Data().textScale);

    ThemeData themeData = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          widget.titleText!.isNotEmpty
              ? Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 3),
                      child: AppText(widget.titleText!,
                          style: widget.titleStyle ??
                              themeData.textTheme.titleMedium),
                    ),
                    SizedBox(
                      height: 8.h,
                    )
                  ],
                )
              : Container(),
          Container(
            height: null,
            decoration: BoxDecoration(
              boxShadow: widget.isShadowRequired! ? [] : [],
              //border:Border.all(color: AppColors.lightGreyColor)
              // borderRadius: BorderRadius.circular(),
            ),
            child: TextFormField(
              onTap: widget.onTap,
              readOnly: widget.readOnly ?? false,
              autovalidateMode: AutovalidateMode.disabled,
              scribbleEnabled: true,
              focusNode: widget.focusNode,

              textCapitalization: widget.textCapitalization??TextCapitalization.sentences,

              //autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: widget.validator ??
                  (v) {
                    if (v!.isEmpty) {
                      return widget.validateText;
                    }
                    return null;
                  },
              onChanged: widget.onChanged,
              keyboardType: widget.textInputType,
              obscureText: widget.isState != null ? isHide : widget.obscureText,
              controller: widget.controller,
              maxLines: widget.maxline,
              style: AppTextStyles.manropiRegular(),
              cursorColor: themeData.colorScheme.primary,
              decoration: InputDecoration(
                fillColor:widget.filledColor??themeData.colorScheme.outline,
                filled: true,
                hintText: widget.hintText,
                border: InputBorder.none,

                helperStyle: widget.hintStyle ?? themeData.textTheme.bodyLarge,
                hintStyle: themeData.textTheme.bodyMedium!.copyWith(
                  color: Theme.of(context).colorScheme.secondary,
                ),
                prefixIcon: widget.prefixIcon,

                suffixIcon: widget.isState != null
                    ? GestureDetector(
                        onTap: () {
                          //isHide=true;
                          if (isHide == true) {
                            isHide = false;
                          } else {
                            isHide = true;
                          }
                          setState(() {});
                        },
                        child: SizedBox(
                            width: widget.suffixWidth ?? 20.w,
                            height: widget.suffixHeight ?? 20.h,
                            child: Center(
                                child: SvgPicture.asset(isHide
                                    ? Assets.icons.saveIcon
                                    : 'assets/Icons/show_pass.svg'))))
                    : widget.suffixIcon != null
                        ? Container(
                            padding: const EdgeInsetsDirectional.only(end: 2.0),
                            width: widget.suffixWidth ?? 20.w,
                            height: widget.suffixHeight ?? 20.h,
                            child: widget.suffixIcon,
                          )
                        : null,

                isDense: true,

                labelText: widget.labelText,
                labelStyle: AppTextStyles.manropiRegular(color:const Color(0xFF7A7A7A),fontSize: 17.fS ),
                alignLabelWithHint: false,


                ///changess
                contentPadding: widget.contentPadding ??
                    const EdgeInsets.symmetric(
                      vertical: 6,
                      horizontal: 12,
                    ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
