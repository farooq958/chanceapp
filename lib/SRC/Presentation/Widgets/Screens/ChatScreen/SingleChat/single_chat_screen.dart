
import 'package:chance/SRC/Application/Utils/Extensions/extensions.dart';
import 'package:chance/SRC/Presentation/Common/app_icon_handler.dart';
import 'package:chance/SRC/Presentation/Common/app_text.dart';
import 'package:chance/gen/assets.gen.dart';
import 'package:flutter/material.dart';

import 'Components/chat_tile.dart';

import 'Components/group_tile.dart';
import 'Components/input_widget.dart';

class SingleChatScreen extends StatefulWidget {
  const SingleChatScreen({super.key});

  @override
  State<SingleChatScreen> createState() => _SingleChatScreenState();
}

class _SingleChatScreenState extends State<SingleChatScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar:AppBar(leading: BackButton(),
      title: AppText("James",style: theme.textTheme.bodyLarge,),
        centerTitle: true,

        actions: [

          DynamicAppIconHandler.buildIcon(context: context,svg: Assets.icons.settingIcon),
          20.x,

        ],
      ),
      body: Column(
        children: [
          //const ChatVehicleTile(),
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.all(24),
              itemBuilder: (context, index) => ChatTile(
                isRight: index % 2 == 0,
                text: 'Hello welcome😁, how are you?',
                time: '09:41',
              ),
              separatorBuilder: (context, index) =>
                  index == 0 ? const GroupTile() : 16.y,
              itemCount: 10,
            ),
          ),
          const InputWidget(),
         // 1.bottomBarToSizedBox,
        ],
      ),
    );
  }
}
