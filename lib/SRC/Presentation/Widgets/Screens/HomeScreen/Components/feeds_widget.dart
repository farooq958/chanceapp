import 'package:chance/SRC/Application/Utils/Extensions/extensions.dart';
import 'package:chance/SRC/Application/Utils/Extensions/responsive_extention.dart';
import 'package:chance/SRC/Domain/feed_model.dart';
import 'package:chance/SRC/Presentation/Common/app_icon_handler.dart';
import 'package:chance/SRC/Presentation/Common/app_text.dart';
import 'package:chance/SRC/Presentation/Common/image_widgets.dart';
import 'package:chance/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class FeedsWidget extends StatelessWidget {
  const FeedsWidget({super.key,this.feedDto});
final FeedModel? feedDto;
  @override
  Widget build(BuildContext context) {
    final ThemeData themeData  =Theme.of(context);
    return IntrinsicHeight(
      child: Container(
       // height: feedDto!.imagePath!=null? 362.h:138.h,
         decoration: BoxDecoration(

       color: themeData.colorScheme.tertiary,
       borderRadius: BorderRadius.circular(20)
         ),

        child: Column(
          mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            10.y,
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
              AssetImageWidget(url: feedDto!.iconPath.toString()),
                10.x,
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [

                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        AppText(feedDto!.name!,style: themeData.textTheme.bodyLarge?.copyWith(fontSize: 14),),
                        6.x,

                        DynamicAppIconHandler.buildIcon(context: context,svg: Assets.icons.verifyIcon)
                      ],
                    ),
                    AppText(feedDto!.topic!,style: themeData.textTheme.bodySmall,)

                  ],),
                10.x,
                AppText(feedDto!.time!,style: themeData.textTheme.bodyLarge?.copyWith(fontSize: 10),),
                const Spacer(),
      DynamicAppIconHandler.buildIcon(context: context,svg: Assets.icons.threeDotIcon)


              ],
            ),
            10.y,
            AppText(feedDto!.desc!,style:themeData.textTheme.bodyMedium?.copyWith(fontSize: 12.fS) ,maxLine: 10,),
            10.y,
            feedDto!.imagePath!=null?
                
                FractionallySizedBox(
                  widthFactor: 1.05,
                    child: AssetImageWidget(url: feedDto!.imagePath!))
                :0.y,
            20.y,
            Row(children: [
              DynamicAppIconHandler.buildIcon(context: context,svg:Assets.icons.heartIcon ),
              15.x,
              DynamicAppIconHandler.buildIcon(context: context,svg: Assets.icons.commentIcon),
              15.x,
              DynamicAppIconHandler.buildIcon(context: context,svg:Assets.icons.shareIcon),
              const Spacer(),
              DynamicAppIconHandler.buildIcon(context: context,svg: Assets.icons.saveIcon)


            ],),
            15.y,


          ],

        ).padHorizontal(10),


      ),
    );
  }
}
