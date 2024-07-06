import 'package:chance/SRC/Application/Utils/Extensions/extensions.dart';
import 'package:chance/gen/assets.gen.dart';
import 'package:flutter/material.dart';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_svg/flutter_svg.dart';



class AssetImageWidget extends StatelessWidget {
  final String url;
  final double? scale;
  final double? width;
  final double? height;
  final Color? color;
  final bool? isCircle;
  final double? radius;
  final BoxFit? fit;
  const AssetImageWidget({
    super.key,
    required this.url,
    this.fit,
    this.scale = 1,
    this.width ,
    this.height ,
    this.color,
    this.isCircle,
    this.radius,
  });
  final String errorImageUrl = "";
  @override
  Widget build(BuildContext context) {
    return isCircle != null
        ? CircleAvatar(
            radius: radius,
            backgroundColor: color,
            backgroundImage: AssetImage(url))
        : url.imageType == ImageType.png
            ? Image.asset(
                url,
                fit: fit ?? BoxFit.fill,
                color: color,
                errorBuilder: (context, url, error) {
                  return isCircle == true
                      ? CircleAvatar(
                          radius: radius,
                          backgroundImage:
                              AssetImage(Assets.icons.saveIcon))
                      : Image.network(
                          errorImageUrl,
                          width: width ?? 110,
                          height: height ?? 110,
                        );
                },
                width: width == null ? null : width! * scale!,
                height: height == null ? null : height! * scale!,
              )
            : SvgPicture.asset(
                url,
                color: color,
                fit: fit ?? BoxFit.contain,
                width: width,
                height: height,
              );
  }
}

// class CachedImage extends StatelessWidget {
//   final String url;
//   final double? scale;
//   final double? radius;
//   final bool? isCircle;
//   final double? containerRadius;
//   final double? bottomRadius;
//   final double? topRadius;
//   final BoxFit? fit;
//   final double? width;
//   final double? height;
//   final String? errorImageUrl;
//
//   final bool? noPlaceHolder;
//   const CachedImage({
//     super.key,
//     required this.url,
//     this.noPlaceHolder,
//     this.errorImageUrl,
//     this.scale = 1,
//     this.radius = 50,
//     this.isCircle = false,
//     this.containerRadius = 0,
//     this.topRadius,
//     this.bottomRadius,
//     this.fit ,
//     this.height,
//     this.width,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     ThemeData themeData = Theme.of(context);
//
//     print("urlllllllllllssllss");
//     print(url);
//     return CachedNetworkImage(
//       imageUrl: url,
//       placeholder: (context, url) => isCircle!
//           ? Container(
//               width: width,
//               height: height,
//               decoration: BoxDecoration(
//                 border: Border.all(
//                   color: themeData.colorScheme.primary,
//                 ),
//                 shape: BoxShape.circle,
//               ),
//               child: Center(
//                 child: CircularProgressIndicator(
//                   color: themeData.colorScheme.primary,
//                 ),
//               ),
//             ):
//       noPlaceHolder!=null?Skeletonizer(
//           enabled: true,
//           child: AssetImageWidget(url: Assets.images.homeSlider.path,fit: BoxFit.cover,))
//           : Container(
//               width: width,
//               height: height,
//               decoration: BoxDecoration(
//                 color: AppColors.darkBrownColor.withOpacity(0.7),
//                 borderRadius: BorderRadius.circular(containerRadius!),
//               ),
//
//             ),
//
//
//       errorWidget: (context, url, error) {
//
//       //  print(errorImageUrl);
//         return ClipRRect(
//           borderRadius: BorderRadius.only(
//             topRight: Radius.circular(topRadius ?? containerRadius!),
//             topLeft: Radius.circular(topRadius ?? containerRadius!),
//             bottomLeft: Radius.circular(bottomRadius ?? containerRadius!),
//             bottomRight: Radius.circular(bottomRadius ?? containerRadius!),
//           ),
//           child: AssetImageWidget(
//
//                   //width: width ?? 110,
//                   //height: height ?? 110,
//             fit: fit, url: errorImageUrl!,
//                 ),
//         );
//       },
//         // progressIndicatorBuilder: (context,pval,dd){
//         // print("downloadProgress");
//         // print(dd);
//         // return  SizedBox();
//         // },
//       imageBuilder: (context, imageProvider) {
//        // imageProvider.obtainCacheStatus(configuration: ImageConfiguration(size: ))
//         return
//         isCircle!
//           ? CircleAvatar(
//               radius: radius,
//               backgroundImage: imageProvider,
//             )
//           : ClipRRect(
//               borderRadius: BorderRadius.only(
//                 topRight: Radius.circular(topRadius ?? containerRadius!),
//                 topLeft: Radius.circular(topRadius ?? containerRadius!),
//                 bottomLeft: Radius.circular(bottomRadius ?? containerRadius!),
//                 bottomRight: Radius.circular(bottomRadius ?? containerRadius!),
//               ),
//               child: Image(
//                 image: imageProvider,
//                 width: width,
//                 height: height,
//                 fit: fit,
//               ),
//             );
//       }
//     );
//   }
// }
