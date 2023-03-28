import 'package:chat_app/chat_app_icons.dart';
import 'package:chat_app/main.dart';
import 'package:chat_app/shared/colors/app_colors.dart';
import 'package:chat_app/shared/typography/app_text_syles.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Action {
  const Action({
    required this.title,
    required this.icon,
  });
  final String title;
  final String icon;
}

class ContextMenu extends StatelessWidget {
  const ContextMenu({Key? key}) : super(key: key);
  static const List<Action> actions = [
    Action(title: 'Reply', icon: 'curve_line_left_up'),
    Action(title: 'Thread Reply', icon: 'thread_reply'),
    Action(title: 'Copy Message', icon: 'copy'),
    Action(title: 'Edit Message', icon: 'pencil_new'),
    Action(title: 'Block User', icon: 'user_ban'),
    Action(title: 'Delete', icon: 'delete'),
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeProvider>(context).theme;
    return Column(
      children: [
        ContextMenuItem(
          theme: theme,
          action: const Action(title: 'Reply', icon: 'curve_line_left_up'),
          isFirst: true,
          isLast: false,
          onTap: () {},
        ),
        ContextMenuItem(
          theme: theme,
          action: const Action(title: 'Thread Reply', icon: 'thread_reply'),
          isFirst: false,
          isLast: false,
          onTap: () {},
        ),
        ContextMenuItem(
          theme: theme,
          action: const Action(title: 'Copy Message', icon: 'copy'),
          isFirst: false,
          isLast: false,
          onTap: () {},
        ),
        ContextMenuItem(
          theme: theme,
          action: const Action(title: 'Edit Message', icon: 'pencil_new'),
          isFirst: false,
          isLast: false,
          onTap: () {},
        ),
        ContextMenuItem(
          theme: theme,
          action: const Action(title: 'Block User', icon: 'user_ban'),
          isFirst: false,
          isLast: false,
          onTap: () {},
        ),
        ContextMenuItem(
          theme: theme,
          action: const Action(title: 'Delete', icon: 'delete'),
          isFirst: false,
          isLast: true,
          onTap: () {},
        ),
      ],
    );
  }
}

class ContextMenuItem extends StatelessWidget {
  const ContextMenuItem({
    super.key,
    required this.theme,
    required this.action,
    required this.isFirst,
    required this.isLast,
    this.onTap,
  });

  final AppColors theme;
  final Action action;
  final bool isFirst;
  final bool isLast;
  final VoidCallback? onTap;

  bool get isDeleteAction => action.title == 'Delete';

  BorderRadius? get borderRadius {
    if (isFirst) {
      return const BorderRadius.only(
        topLeft: Radius.circular(16),
        topRight: Radius.circular(16),
      );
    }
    if (isLast) {
      return const BorderRadius.only(
        bottomLeft: Radius.circular(16),
        bottomRight: Radius.circular(16),
      );
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 264,
        height: 40,
        decoration: BoxDecoration(
          color: theme.whiteSnow,
          borderRadius: borderRadius,
          border: Border.all(color: theme.greyWhisper),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                ChatApp.parse(action.icon),
                color: isDeleteAction ? theme.accentRed : theme.black,
              ),
              const SizedBox(width: 16),
              Text(
                action.title,
                style: AppTextStyles(colors: theme).body(
                  color: isDeleteAction ? theme.accentRed : null,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
