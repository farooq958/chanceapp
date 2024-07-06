
import 'package:chance/SRC/Application/Utils/Extensions/extensions.dart';
import 'package:chance/SRC/Application/Utils/Extensions/responsive_extention.dart';
import 'package:chance/SRC/Presentation/Common/app_icon_handler.dart';
import 'package:chance/SRC/Presentation/Common/image_widgets.dart';
import 'package:chance/gen/assets.gen.dart';
import 'package:flutter/material.dart';

import '../../../../../Common/app_text.dart';

class ChatTile extends StatelessWidget {
  const ChatTile({
    super.key,
    required this.isRight,
    required this.text,
    required this.time,
  });

  final bool isRight;
  final String text;
  final String time;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment:
          isRight ? CrossAxisAlignment.end : CrossAxisAlignment.start,
      children: [
        Row(
          children: [

            !isRight ?  Transform.translate(
                //alignment: Alignment.topCenter,
              offset: const Offset(0,-20),
                child: AssetImageWidget(url: Assets.images.user1Image.path).pad(const EdgeInsets.only(right: 10))):0.y,
            Expanded(
              child: Container(
                margin: EdgeInsets.only(
                    right: isRight ? 0 : .25.sw, left: isRight ? .25.sw : 0),
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 12,
                ),
                decoration: BoxDecoration(
                  color:
                      isRight ? theme.colorScheme.tertiary : theme.colorScheme.tertiary,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(isRight ? 16 : 0),
                    topRight: Radius.circular(isRight ? 0 : 16),
                    bottomLeft: const Radius.circular(16),
                    bottomRight: const Radius.circular(16),
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Flexible(
                      child: AppText(
                        maxLine: 100,
                        text,
                        style: theme.textTheme.bodyMedium!.copyWith(
                          color: isRight
                              ? theme.colorScheme.secondary
                              : theme.colorScheme.onBackground,
                        ),
                      ),
                    ),
                    12.x,
                    Align(
                      alignment: Alignment.bottomRight,
                      child: AppText(
                        time,
                        style: theme.textTheme.bodySmall!.copyWith(
                          color: isRight
                              ?theme.colorScheme.secondary
                              : theme.colorScheme.secondary,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            isRight ?  Transform.translate(offset: const Offset(0,20),
            child: AssetImageWidget(url: Assets.images.user1Image.path).pad(const EdgeInsets.only(left: 10))):0.y,
          ],
        ),
      ],
    );
  }
}
