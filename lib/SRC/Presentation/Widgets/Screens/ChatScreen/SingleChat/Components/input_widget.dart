import 'dart:io';
import 'package:chance/SRC/Application/Utils/Extensions/extensions.dart';
import 'package:chance/SRC/Presentation/Common/app_icon_handler.dart';
import 'package:chance/SRC/Presentation/Common/app_textField.dart';
import 'package:chance/SRC/Presentation/Common/common_button.dart';
import 'package:chance/gen/assets.gen.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';


class InputWidget extends StatefulWidget {
  const InputWidget({
    super.key,
  });

  @override
  State<InputWidget> createState() => _InputWidgetState();
}

class _InputWidgetState extends State<InputWidget> {
  ValueNotifier<List<File>> files = ValueNotifier([]);
  List<File> thumbnails = [];
  String? selectedType;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      color: theme.colorScheme.background,
      child: ValueListenableBuilder(
        valueListenable: files,
        builder: (context, filesValue, child) => Container(
          decoration: filesValue.isNotEmpty
              ? BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: theme.colorScheme.tertiary,
                  ),
                )
              : null,
          child:  Row(
                  children: [
                    Expanded(
                      child: AppTextField(
                        hintText: 'Type Something',
                        filledColor: Colors.white,
                        controller: TextEditingController(),
                        textInputType: TextInputType.text,
                        prefixIcon: DynamicAppIconHandler.buildIcon(
                          context: context,
                          svg: Assets.icons.galleryIcon,
                         // iconColor: theme.colorScheme.tertiary,
                        ),
                        suffixIcon: DynamicAppIconHandler.buildIcon(context: context,svg: Assets.icons.sendIcon),
                      ),
                    ),
                    12.x,

                  ],
                ),
        ),
      ),
    );
  }


}
