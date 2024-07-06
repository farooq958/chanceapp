import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final TextOverflow? overflow;
  final TextAlign? textAlign;
  final int? maxLine;
  final VoidCallback? onTap;

  const AppText(
    this.text, {
    super.key,
    this.style,
    this.overflow,
    this.maxLine = 1,
    this.onTap,
    this.textAlign = TextAlign.start,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Text(
        text,
        maxLines: maxLine,
        textAlign: textAlign ?? TextAlign.start,
        //textScaleFactor: 1,
        textScaler: TextScaler.noScaling,
        overflow: overflow ?? TextOverflow.ellipsis,
        style: style ?? Theme.of(context).textTheme.bodySmall,
      ),
    );
  }
}
