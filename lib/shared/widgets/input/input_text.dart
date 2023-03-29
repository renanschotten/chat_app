// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:chat_app/main.dart';
import 'package:chat_app/shared/shared.dart';

class InputText extends StatelessWidget {
  const InputText({
    Key? key,
    this.focus,
    this.textController,
    this.labelText,
  }) : super(key: key);

  final String? labelText;
  final FocusNode? focus;
  final TextEditingController? textController;

  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeProvider>(context).theme;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
        color: theme.whiteSmoke,
        borderRadius: const BorderRadius.all(
          Radius.circular(8.0),
        ),
      ),
      child: TextField(
        controller: textController,
        onTapOutside: (_) => focus?.unfocus(),
        focusNode: focus,
        decoration: InputDecoration(
          border: InputBorder.none,
          labelText: labelText,
          labelStyle: AppTextStyles(colors: theme).body(color: theme.grey),
        ),
        cursorColor: theme.black,
        style: AppTextStyles(colors: theme).body(),
      ),
    );
  }
}
