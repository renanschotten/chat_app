import 'package:chat_app/main.dart';
import 'package:chat_app/shared/typography/app_text_syles.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PillButton extends StatelessWidget {
  const PillButton({super.key, required this.text, this.onTap});
  final String text;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeProvider>(context).theme;
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 48,
        decoration: ShapeDecoration(
          color: theme.buttonBackground,
          shape: const StadiumBorder(),
        ),
        child: Center(
          child: Text(
            text,
            style: AppTextStyles(colors: theme).headlineBold(
              color: theme.buttonText,
            ),
          ),
        ),
      ),
    );
  }
}
