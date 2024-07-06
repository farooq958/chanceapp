// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// import 'package:flutter_quick_router/quick_router.dart';
//
//
// import 'app_icon_handler.dart';
// import 'app_text.dart';
//
// class CommonDialogs {
//   static showCustomDialogue({
//     required BuildContext context,
//     double radius = 20,
//     Color? backgroundColor,
//     EdgeInsetsGeometry? padding,
//     required Widget child,
//     double elevation = 20,
//     EdgeInsets? insetPadding,
//   }) {
//     showDialog(
//       context: context,
//       builder: (ctx) {
//         return Dialog(
//           insetPadding: insetPadding ?? const EdgeInsets.all(24),
//           elevation: elevation,
//           shadowColor: Theme.of(context).colorScheme.tertiary,
//           clipBehavior: Clip.hardEdge,
//           backgroundColor: Colors.transparent,
//           shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(radius)),
//           child: Container(
//               padding: padding ?? const EdgeInsets.all(30),
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(radius),
//                 color:
//                     backgroundColor ?? Theme.of(context).colorScheme.background,
//               ),
//               child: child),
//         );
//       },
//     );
//   }
//
//   static showLoadingDialogue({required BuildContext context}) {
//     return showCustomDialogue(
//       backgroundColor: Colors.transparent,
//       elevation: 0,
//       padding: EdgeInsets.zero,
//       context: context,
//       child: const Icon(
//         size: 50,
//         Icons.downloading_outlined,
//       ),
//     );
//   }
//
//   static showCouponUseConfirmationDialogue(
//       {required BuildContext context,
//       required VoidCallback activate,
//       VoidCallback? cancel}) {
//     return CommonDialogs.showCustomDialogue(
//         context: context,
//         radius: 12,
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             AppText(
//               'Aktiver kupong?',
//               style: AppTextStyles.poppinsRegular(
//                 context,
//                 fontSize: 24,
//                 color: AppColors.darkBrownColor,
//               ),
//             ),
//             16.y,
//             AppText(
//               maxLine: 10,
//               'Kuponger som har en begrenset bruk bør aktiveres i butikken, slik at du sikrer din rabatt . Kuponger uten begrensning kan aktivers når som helst.',
//               style: AppTextStyles.poppinsRegular(
//                 context,
//                 fontSize: 14,
//                 color: AppColors.darkBrownColor,
//               ),
//             ),
//             24.y,
//             CommonButton(
//               onTap: activate,
//               verticalMargin: 12,
//               horizontalMargin: 0,
//               text: 'Aktiver',
//               backgroundColor: AppColors.darkBrownColor,
//               style: AppTextStyles.poppinsBold(context,
//                   color: AppColors.whiteColor, fontSize: 14),
//             ),
//             CommonButton(
//               onTap: cancel ??
//                   () {
//                     context.back();
//                   },
//               verticalMargin: 0,
//               horizontalMargin: 0,
//               style: AppTextStyles.poppinsBold(context,
//                   color: AppColors.darkBrownColor, fontSize: 14),
//               text: 'Avbryt',
//               backgroundColor: AppColors.whiteColor,
//             )
//           ],
//         ));
//   }
//
//   static successDialogue(
//       {required BuildContext context, required String title}) {
//     CommonDialogs.showCustomDialogue(
//       context: context,
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           const Icon(
//             Icons.check_circle_outline,
//             size: 40,
//             color: AppColors.darkBrownColor,
//           ),
//           16.y,
//           AppText(
//             title,
//             style: AppTextStyles.phosphateRegular(
//               context,
//               fontSize: 24,
//               color: AppColors.darkBrownColor,
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
