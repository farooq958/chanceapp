import 'package:chance/SRC/Application/Utils/Extensions/extensions.dart';
import 'package:chance/SRC/Presentation/Common/app_icon_handler.dart';
import 'package:chance/SRC/Presentation/Widgets/Screens/HomeScreen/Components/buisness_feed_widget.dart';
import 'package:chance/SRC/Presentation/Widgets/Screens/HomeScreen/Components/public_feed_widget.dart';
import 'package:chance/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class HomeScreens extends StatefulWidget  {
  const HomeScreens({super.key});

  @override
  State<HomeScreens> createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> with SingleTickerProviderStateMixin {
     TabController? controller;
  @override
  void initState() {
    controller=TabController(length: 2, vsync: this);

    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData=Theme.of(context);

    return Scaffold(

      appBar: AppBar(title: DynamicAppIconHandler.buildIcon(context: context,svg: Assets.icons.chanceHeader),

      actions: [

        DynamicAppIconHandler.buildIcon(context: context,svg: Assets.icons.bellIcon),
        24.x,

      ],
        bottom: TabBar(
          controller: controller,
          dividerColor: Colors.transparent,
          indicatorSize: TabBarIndicatorSize.tab,// Assign the controller
          tabs: const [
            Tab(text: 'Public Feed'),
            Tab( text: 'Business Feed'),
          ],
        ),
      ),

      body: TabBarView(
        controller: controller, // Assign the controller again
        children:  [
          // Content for the Home tab
          PublicFeedWidget(),
          // Content for the Settings tab
          const BuisnessFeedWidget()
        ],
      ),

    );
  }
}
