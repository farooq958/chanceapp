// import 'package:flutter/material.dart';
//
//
// class Navigate {
//   to(BuildContext? context, Widget child, {Duration? duration}) {
//     Navigator.push(
//         context?? AppContext.navigatorKey.currentContext!,
//         PageTransition(
//             type: PageTransitionType.topToBottom,
//             child: child,
//             duration: duration ?? const Duration(milliseconds: 200)));
//   }
//
//   toReplace(BuildContext? context, Widget child) {
//     Navigator.pushReplacement(context?? AppContext.navigatorKey.currentContext!,
//         PageTransition(type: PageTransitionType.topToBottom, child: child));
//   }
//
//   toReplaceAll(BuildContext?context, Widget child) {
//     Navigator.pushAndRemoveUntil(
//       context?? AppContext.navigatorKey.currentContext!,
//       MaterialPageRoute(builder: (context) => child),
//       (route) => false,
//     );
//   }
//
//   pop(BuildContext? context) {
//     Navigator.pop(context?? AppContext.navigatorKey.currentContext!);
//   }
// }
///now using Quick Router much mature package and well maitainable pacakge