// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:chat_app/main.dart';
import 'package:chat_app/shared/shared.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
    this.title,
    this.leading,
    this.trailing,
    this.onTapLeading,
    this.onTapTrailing,
  }) : super(key: key);
  final String? title;
  final Widget? leading;
  final Widget? trailing;
  final VoidCallback? onTapLeading;
  final VoidCallback? onTapTrailing;

  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeProvider>(context).theme;

    return SafeArea(
      child: Container(
        width: preferredSize.width,
        height: preferredSize.height,
        decoration: BoxDecoration(
            color: theme.white,
            border: Border(bottom: BorderSide(color: theme.greyGainsboro))),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 40,
                child: GestureDetector(onTap: onTapLeading, child: leading),
              ),
              Text(
                'Advanced Options',
                style: AppTextStyles(colors: theme).headlineBold(),
              ),
              SizedBox(
                width: 40,
                child: GestureDetector(onTap: onTapTrailing, child: trailing),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 56);
}
