import 'package:flutter/material.dart';
import 'package:flutter_quick_router/quick_router.dart';
class CommonBottomSheet {
  static showBottomSheet(
      {required BuildContext context,
      required Widget child,
      Color? backgroundColor}) {
    return showModalBottomSheet(
        backgroundColor:
            backgroundColor ?? Theme.of(context).colorScheme.background,
        isScrollControlled: true,
        context: context,
        builder: (ctx) => child);
  }


}
