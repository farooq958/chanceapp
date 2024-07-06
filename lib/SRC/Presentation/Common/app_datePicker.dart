import 'package:chance/SRC/Application/Utils/Extensions/extensions.dart';
import 'package:chance/SRC/Application/Utils/Extensions/responsive_extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


import 'app_textField.dart';

class AppDatePicker extends StatefulWidget {
  // final String imageUrl;
  final String? validationText;
  final TextEditingController controller;

  final bool isBorderRequired;
  final bool isShadowRequired;
  final bool? isSuffix;
  final double vMargin;
  final double hMargin;
  final String? Function(String?)? validator;
  Widget? prefixIcon;
  Widget? suffixIcon;
  double? sHeight;
  double? sWidth;
  double? pHeight;
  double? pWidth;
  String? hintText;
  String? labelText;
  bool? readOnly;

  final EdgeInsets? contentPadding;
final TextStyle? hintStyle;
  // final String? Function(String?)? validator;
  AppDatePicker(
      {super.key,
      // required this.text,
      // required this.imageUrl,
      // required this.dateTime,
      this.vMargin = 8,
      this.hMargin = 0,
        this.labelText,
      this.isBorderRequired = true,
      this.isShadowRequired = false,
      this.hintText,
      this.validator,
      this.isSuffix = false,
      this.validationText,
      required this.controller,
      this.prefixIcon,
      this.suffixIcon,
      this.sHeight,
      this.sWidth,
      this.pHeight,
      this.pWidth,
        this.readOnly,
      this.contentPadding, this.hintStyle});

  @override
  State<AppDatePicker> createState() =>
      _AppDatePickerState();
}

class _AppDatePickerState
    extends State<AppDatePicker> {
  DateTime? date;

  @override
  Widget build(BuildContext context) {
    return AppTextField(
        borderRadius: 25.r,
        contentPadding: widget.contentPadding,
        validateText: widget.validationText ?? "Date Required",
hintStyle: widget.hintStyle,

        // isValid: false,
labelText: widget.labelText,
        filledColor: Colors.white,
        readOnly: true,
        onTap: widget.readOnly==true?null:() async {
          SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
            statusBarColor: Colors.black12,
          ));
          var newDate = await datePicker(context,widget.controller.text!=""?DateTime.parse( widget.controller.text):null);

          if (newDate != null) {
            setState(() {
              //  date = newDate;
              // widget.dateTime(newDate);
              widget.controller.text = newDate.humanReadableDate;
            });
          }
        },
        prefixIcon: widget.prefixIcon,
        suffixIcon: widget.suffixIcon,
        isShadowRequired: widget.isShadowRequired,
        suffixHeight: widget.sHeight,
        suffixWidth: widget.sWidth,
        isValid: false,
        controller: widget.controller,
        isBorderRequired: widget.isBorderRequired,
        hintText: widget.hintText ?? "",
        validator: widget.validator,
        textInputType: TextInputType.text);
  }


  Future<DateTime?> datePicker(
    BuildContext context,
      DateTime? initialDatee,
  ) async {
    final initialDate = initialDatee ?? DateTime.now();
    final newDate = await showDatePicker(
      context: context,
      initialDate: initialDate,
     // barrierColor: AppColors.lightSkinColor2,
        builder: (BuildContext context, Widget? child) {
          return child!;
        },
      firstDate: DateTime(DateTime.now().year - 100),
      lastDate: DateTime(DateTime.now().year + 5),
    ).whenComplete(() {
      setState(() {
        SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
          statusBarColor: Colors.white,
        ));
      });
    });

    if (newDate == null) {
      return null;
    } else {
      return newDate;
    }
  }
}
