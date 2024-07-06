import 'package:chance/SRC/Application/Utils/Extensions/extensions.dart';
import 'package:chance/SRC/Application/Utils/Extensions/responsive_extention.dart';
import 'package:chance/SRC/Presentation/Common/app_icon_handler.dart';
import 'package:chance/SRC/Presentation/Common/app_text.dart';
import 'package:chance/SRC/Presentation/Common/image_widgets.dart';
import 'package:chance/SRC/Presentation/Widgets/Screens/ChatScreen/SingleChat/single_chat_screen.dart';
import 'package:chance/SRC/Presentation/Widgets/Screens/ChatScreen/chat_screen.dart';
import 'package:chance/SRC/Presentation/Widgets/Screens/CreateScreen/create_screen.dart';
import 'package:chance/SRC/Presentation/Widgets/Screens/HomeScreen/home_screens.dart';
import 'package:chance/SRC/Presentation/Widgets/Screens/ProfileScreen/profile_screen.dart';
import 'package:chance/SRC/Presentation/Widgets/Screens/SearchScreen/search_Screen.dart';
import 'package:chance/gen/assets.gen.dart';
import 'package:flutter/material.dart';


import 'Controller/btController.dart';

class AppFrame extends StatefulWidget {
  const AppFrame({super.key});

  @override
  State<AppFrame> createState() => _AppFrameState();
}

class _AppFrameState extends State<AppFrame> {
  @override
  void initState() {

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final themData= Theme.of(context);
    return Scaffold(

      //appBar: IdyllAppBar(),


      bottomNavigationBar: BottomAppBar(
        //color: AppColors.blackColor,
        elevation: 2.2.rSA,
        shape: const CircularNotchedRectangle(),
        height: 80,
        child: ValueListenableBuilder(
          builder: (context, state, ss) {
            return Row(
              //children inside bottom appbar
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                //5.x,
                //10.x,
                ///Home Screen
                InkWell(
                  onTap: () {
                    if (state != 0) {
                      BottomNotifier.bottomPageController!.jumpToPage(0);
                      BottomNotifier.bottomNavigationNotifier.value = 0;
                    }
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      5.y,
                      Expanded(
                        flex: 2,
                        child: Align(
                            child: DynamicAppIconHandler.buildIcon(context: context,svg:state==0?Assets.icons.homeFilledIcon:Assets.icons.homeFilledIcon,iconColor: state==0?null:Colors.black.withOpacity(0.7) )),
                      ),
                      Expanded(
                        child: AppText(
                          "Home",
                          style: themData.textTheme.bodySmall?.copyWith(color: state==0?themData.primaryColor:Colors.black)
                        ),
                      )
                    ],
                  ),
                ),
                10.x,

                ///Search
                InkWell(
                  onTap: () {
                    if (state != 1) {
                      BottomNotifier.bottomPageController!.jumpToPage(1);
                      BottomNotifier.bottomNavigationNotifier.value = 1;
                    }
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Align(
                            child: DynamicAppIconHandler.buildIcon(context: context,svg: Assets.icons.searchIcon, iconColor: state==1?themData.primaryColor:null)
                        
                        ),
                      ),
                      Expanded(
                        child: AppText("Search",
                            style:  themData.textTheme.bodySmall?.copyWith(color: state==1?themData.primaryColor:null)

                        ),
                      )
                    ],
                  ),
                ),
                // 50.x,
                10.x,

                ///Create
                InkWell(
                  onTap: () {
                    if (state != 2) {
                      BottomNotifier.bottomPageController!.jumpToPage(2);
                      BottomNotifier.bottomNavigationNotifier.value = 2;
                    }
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      // state==2? Expanded(child: Container(height: 7,width: 7,decoration: const BoxDecoration(color: AppColors.greenBorderColor,shape: BoxShape.circle),)):const Expanded(child: SizedBox(height: 7,width: 7,)),
                      Expanded(
                        flex: 2,
                        child:  Align(
                            child: DynamicAppIconHandler.buildIcon(context: context,svg: Assets.icons.addIcon, iconColor: state==2?themData.primaryColor:null)

                        ),
                      ),
                      Expanded(
                        child: AppText("Create",
                            style: themData.textTheme.bodySmall?.copyWith(color: state==2?themData.primaryColor:null)),
                      )
                    ],
                  ),
                ),

                20.x,

                ///cHAT
                InkWell(
                  onTap: () {
                    if (state != 3) {
                      BottomNotifier.bottomPageController!.jumpToPage(3);
                      BottomNotifier.bottomNavigationNotifier.value = 3;
                    }
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Align(
                            child: DynamicAppIconHandler.buildIcon(context: context,svg: Assets.icons.chatIcon, iconColor: state==3?themData.primaryColor:null)

                        ),
                      ),
                      Expanded(
                        child: AppText("Chat",
                            style: themData.textTheme.bodySmall?.copyWith(color: state==3?themData.primaryColor:null)),
                      )
                    ],
                  ),
                ),

                10.x,

                ///pROFILE
                InkWell(
                  onTap: () {
                    if (state != 4) {
                      BottomNotifier.bottomPageController!.jumpToPage(4);
                      BottomNotifier.bottomNavigationNotifier.value = 4;
                    }
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Align(
                            child: DynamicAppIconHandler.buildIcon(context: context,svg: Assets.icons.profileIcon, iconColor: state==4?themData.primaryColor:null)

                        ),
                      ),
                      Expanded(
                        child: AppText("Profile",
                            style: themData.textTheme.bodySmall?.copyWith(color: state==4?themData.primaryColor:null)),
                      )
                    ],
                  ),
                ),
              ],
            );
          },
          valueListenable: BottomNotifier.bottomNavigationNotifier,
        ),
      ),
      body: SizedBox(
          width: 1.sw,
          height: 1.sh,
          child: Stack(
            children: [
              PageView(
                controller: BottomNotifier.bottomPageController,
                physics: const NeverScrollableScrollPhysics(),
                children: const [

                  HomeScreens(),
                  SearchScreen(),
                  CreateScreen(),
                  ChatScreen(),
                  ProfileScreen()

                ],
              ),
            ],
          )),
    );
  }
}


