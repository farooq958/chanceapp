import 'package:chance/SRC/Application/Utils/Extensions/extensions.dart';
import 'package:chance/SRC/Presentation/Common/app_text.dart';
import 'package:chance/SRC/Presentation/Common/image_widgets.dart';
import 'package:chance/SRC/Presentation/Widgets/Screens/ChatScreen/SingleChat/single_chat_screen.dart';
import 'package:chance/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quick_router/Routers/quick_routes.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: AppText("Chat",style: Theme.of(context).textTheme.bodyLarge,),),
      body: Column(children: [

        50.y,
        ListTile(
onTap: (){

  context.to(const SingleChatScreen());
},
          tileColor: Theme.of(context).colorScheme.tertiary,
          trailing: const Icon(Icons.arrow_forward),
          title: Text('James',

          style: Theme.of(context).textTheme.bodyMedium,),leading: AssetImageWidget(url: Assets.images.user1Image.path),)


      ],),

    );
  }
}
