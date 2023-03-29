import 'package:chat_app/chat_app_icons.dart';
import 'package:chat_app/shared/widgets/buttons/pill_button.dart';
import 'package:chat_app/shared/widgets/custom_app_bar/custom_app_bar.dart';
import 'package:chat_app/shared/widgets/input/input_text.dart';
import 'package:flutter/material.dart';

class SelectUserAdvanced extends StatefulWidget {
  const SelectUserAdvanced({Key? key}) : super(key: key);

  @override
  State<SelectUserAdvanced> createState() => _SelectUserAdvancedState();
}

class _SelectUserAdvancedState extends State<SelectUserAdvanced> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(
          title: 'title',
          leading: const Icon(ChatApp.left_chevron),
          onTapLeading: () => Navigator.pop(context),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                child: Column(
                  children: [
                    InputText(
                      labelText: 'Chat API Key',
                      focus: FocusNode(),
                    ),
                    const SizedBox(height: 8.0),
                    InputText(
                      labelText: 'User ID',
                      focus: FocusNode(),
                    ),
                    const SizedBox(height: 8.0),
                    InputText(
                      labelText: 'User Token',
                      focus: FocusNode(),
                    ),
                    const SizedBox(height: 8.0),
                    InputText(
                      labelText: 'Username (Optional)',
                      focus: FocusNode(),
                    ),
                  ],
                ),
              ),
              const PillButton(text: 'Login')
            ],
          ),
        ),
      ),
    );
  }
}
