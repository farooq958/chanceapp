import 'package:chance/SRC/Application/Utils/Extensions/extensions.dart';
import 'package:chance/SRC/Application/Utils/Extensions/responsive_extention.dart';
import 'package:chance/SRC/Presentation/Common/app_icon_handler.dart';
import 'package:chance/SRC/Presentation/Common/app_text.dart';
import 'package:chance/SRC/Presentation/Common/app_textField.dart';
import 'package:chance/SRC/Presentation/Common/common_button.dart';
import 'package:chance/SRC/Presentation/Common/scrolling_tabs.dart';
import 'package:chance/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class CreateScreen extends StatefulWidget {
  const CreateScreen({super.key});

  @override
  State<CreateScreen> createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
  ValueNotifier<int> selectedTab=ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData =Theme.of(context);
    return Scaffold(

      appBar: AppBar(
        automaticallyImplyLeading: false,
       // leading: BackButton(),
        title: AppText("Create",style:themeData.textTheme.bodyLarge ,),
centerTitle: true,
        actions: [

          CommonButton(onTap: (){},text: "Post",borderRadius: 10,verticalMargin: 10,),


        ],

      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

        30.y,

        ValueListenableBuilder(
          builder: (context,indexVal,ss) {
            return Row(
              children: [

                Container(

                  height: 35.h,
                  width: 165.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: indexVal==0?themeData.primaryColor : null,
                    border: Border.all(color:  indexVal!=0? themeData.colorScheme.secondary:Colors.transparent),



                  ),
                  child: Center(child: AppText('Public',style: themeData.textTheme.bodyMedium?.copyWith(color: indexVal==0?Colors.white:Colors.black),)),
                ).onTapped(onTap: (){
                  selectedTab.value=0;
                }),
                10.x,
                Container(

                  height: 35.h,
                  width: 165.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: indexVal==1?themeData.primaryColor : null,
                    border: Border.all(color:  indexVal!=1? themeData.colorScheme.secondary:Colors.transparent),



                  ),
                  child: Center(child: AppText('Business',style: themeData.textTheme.bodyMedium?.copyWith(color: indexVal==1?Colors.white:Colors.black),)),
                ).onTapped(onTap: (){
                  selectedTab.value=1;
                })

              ],

            );
          }, valueListenable: selectedTab,
        ),


        Expanded(child: ListView(
          padding: EdgeInsets.zero,
          children: [

            10.y,
            AppTextField(controller: TextEditingController(),
              filledColor: Colors.white,
              maxline: 10,
              textInputType: TextInputType.text,hintText: 'Type something',),
            30.y,
            AppText('Topic',style: themeData.textTheme.bodyMedium,),
            FractionallySizedBox(
              widthFactor: 1.2,
              child: ScrollingTabs(list: const [
                "Climate Change & Sustainability",
                "Consious Art",
                "Climate Change & Sustainability2",
                "Consious Art2",

              ],
                sizedBoxWidth: 10,
                tabStyle: const ChipButtonStyle(radius: 20,hPadding: 10,vPadding: 8),
                widgets: [


                ], currentTab: (Widget widget) {  },),
            ),
            10.y,
            Row(
              children: [
                DynamicAppIconHandler.buildIcon(context: context,svg: Assets.icons.cameraIcon),
                10.x,
                DynamicAppIconHandler.buildIcon(context: context,svg: Assets.icons.galleryIcon),
              ],
            ),
        ],))



      ],).padHorizontal(20),
    );
  }
}
