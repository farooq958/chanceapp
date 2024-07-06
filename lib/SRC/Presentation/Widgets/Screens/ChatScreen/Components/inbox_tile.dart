import 'package:chance/SRC/Application/Utils/Extensions/extensions.dart';
import 'package:chance/SRC/Presentation/Common/app_text.dart';
import 'package:chance/SRC/Presentation/Common/image_widgets.dart';
import 'package:chance/gen/assets.gen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class InboxTile extends StatelessWidget {
  const InboxTile({
    super.key,
    required this.onTap,
  });

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      height: 100,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: BorderRadius.circular(8),
      ),
      child: MaterialButton(
        padding: const EdgeInsets.all(16),
        onPressed: onTap,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 60,
              height: 60,
              child: AssetImageWidget(
                url: Assets.images.user1Image.path,
                isCircle: true,
              ),
            ),
            12.x,
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText(
                    'William Woolery',
                    style: theme.textTheme.titleMedium!.copyWith(
                      color: theme.colorScheme.onBackground,
                      fontSize: 15,
                    ),
                  ),
                  2.y,
                  AppText(
                    'Toyota corolla 2021',
                    style: theme.textTheme.bodyMedium!.copyWith(
                      color: theme.colorScheme.onBackground,
                      fontSize: 11,
                    ),
                  ),
                  2.y,
                  AppText(
                      'Hello, welcome to Premier. hello, welcome to Premier ...',
                      style: theme.textTheme.bodyMedium),
                ],
              ),
            ),
            12.x,
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                AppText('09.41', style: theme.textTheme.bodyMedium),
                Container(
                  width: 25,
                  height: 25,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: theme.colorScheme.primary,
                  ),
                  child: Center(
                    child: AppText(
                      '2',
                      style: theme.textTheme.bodySmall!.copyWith(

                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
