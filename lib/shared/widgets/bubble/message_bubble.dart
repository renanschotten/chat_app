import 'package:chat_app/main.dart';
import 'package:flutter/material.dart';

import 'package:chat_app/shared/typography/app_text_syles.dart';
import 'package:provider/provider.dart';

class MessageBubble extends StatelessWidget {
  const MessageBubble({
    Key? key,
    required this.text,
    required this.isReceivedMessege,
    required this.isSingleOrLastMessage,
  }) : super(key: key);

  final String text;
  final bool isReceivedMessege;
  final bool isSingleOrLastMessage;

  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeProvider>(context).theme;
    return Align(
      alignment:
          isReceivedMessege ? Alignment.centerLeft : Alignment.centerRight,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        decoration: BoxDecoration(
          color: isReceivedMessege ? theme.white : theme.greyWhisper,
          borderRadius: isSingleOrLastMessage
              ? BorderRadius.only(
                  bottomLeft: isReceivedMessege
                      ? Radius.zero
                      : const Radius.circular(16),
                  bottomRight: isReceivedMessege
                      ? const Radius.circular(16)
                      : Radius.zero,
                  topLeft: const Radius.circular(16),
                  topRight: const Radius.circular(16),
                )
              : const BorderRadius.all(
                  Radius.circular(16),
                ),
          border: Border.all(color: theme.greyWhisper),
        ),
        child: Text(
          text,
          style: AppTextStyles(colors: theme).body(),
        ),
      ),
    );
  }
}
