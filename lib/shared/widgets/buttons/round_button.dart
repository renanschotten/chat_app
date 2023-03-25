import 'package:chat_app/main.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RoundButton extends StatelessWidget {
  const RoundButton({super.key, required this.icon, this.iconColor});
  final IconData icon;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeProvider>(context).theme;
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.white, // theme.white,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            blurRadius: 4,
            offset: const Offset(0, 1),
            color: theme.overlayDark,
          )
        ],
      ),
      child: Icon(
        icon,
        color: iconColor,
      ),
    );
  }
}
