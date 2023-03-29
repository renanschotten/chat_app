import 'package:chat_app/chat_app_icons.dart';
import 'package:chat_app/modules/select_user/view/select_user_advanced.dart';
import 'package:chat_app/shared/colors/app_colors.dart';
import 'package:chat_app/shared/typography/app_text_syles.dart';
import 'package:chat_app/shared/widgets/buttons/pill_button.dart';
import 'package:chat_app/shared/widgets/buttons/round_button.dart';
import 'package:chat_app/shared/widgets/context_menu/context_menu.dart';
import 'package:chat_app/shared/widgets/custom_app_bar/custom_app_bar.dart';
import 'package:chat_app/shared/widgets/input/input_text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:chat_app/shared/widgets/bubble/message_bubble.dart';

void main() {
  runApp(MyApp());
}

class DarkThemeProvider with ChangeNotifier {
  bool darkTheme = false;

  toggleDarkTheme(bool value) {
    darkTheme = value;
    notifyListeners();
  }
}

class ThemeProvider with ChangeNotifier {
  AppColors theme = LightThemeColors();

  toggleTheme() {
    if (theme is LightThemeColors) {
      theme = DarkThemeColors();
    } else {
      theme = LightThemeColors();
    }
    notifyListeners();
  }
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  ThemeProvider themeProvider = ThemeProvider();
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => themeProvider,
      child: Consumer<ThemeProvider>(
        builder: (context, value, child) => MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const SelectUserAdvanced(/* title: 'Flutter Demo Home Page' */),
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool value = false;
  late var tp;
  late var ts;
  var lorem =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ex dolor, viverra a bibendum id, ultricies sed augue. Nunc rutrum neque vel elit convallis faucibus. Mauris efficitur metus vel erat blandit venenatis. Donec et pellentesque augue. Etiam venenatis lorem blandit magna pulvinar, nec ullamcorper felis euismod. Ut vitae diam dui. Nam ullamcorper dignissim metus, eget lacinia nisl luctus sit amet. Cras lacinia suscipit nibh, at laoreet dolor aliquam id. Cras laoreet vitae ligula non varius. Praesent non scelerisque turpis. Sed porta ex ut iaculis bibendum. Aenean lobortis vulputate nisi at elementum. Aenean ullamcorper metus non magna congue mollis. Curabitur eleifend interdum libero at vulputate.';
  @override
  void didChangeDependencies() {
    tp = Provider.of<ThemeProvider>(context);
    ts = AppTextStyles(colors: Provider.of<ThemeProvider>(context).theme);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leading: Icon(
          ChatApp.left_chevron,
          color: tp.theme.black,
        ),
        title: 'AdvancedOption',
        trailing: Checkbox(
          value: value,
          onChanged: (_) {
            tp.toggleTheme();
            value = !value;
          },
        ),
      ),
      backgroundColor: tp.theme.whiteSnow,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: <Widget>[
              const SizedBox(height: 24),
              InputText(
                labelText: 'User ID',
                textController: TextEditingController(),
                focus: FocusNode(),
              ),
              const SizedBox(height: 24),
              const MessageBubble(
                text: 'That’s him!',
                isReceivedMessege: true,
                isSingleOrLastMessage: false,
              ),
              const SizedBox(height: 24),
              const MessageBubble(
                text: 'That’s him!',
                isReceivedMessege: false,
                isSingleOrLastMessage: false,
              ),
              const SizedBox(height: 24),
              MessageBubble(
                text: lorem,
                isReceivedMessege: true,
                isSingleOrLastMessage: true,
              ),
              const SizedBox(height: 24),
              MessageBubble(
                text: lorem,
                isReceivedMessege: false,
                isSingleOrLastMessage: true,
              ),
              const SizedBox(height: 24),
              const Center(child: ContextMenu()),
              const SizedBox(height: 24),
              RoundButton(
                icon: ChatApp.pencil_new,
                iconColor: tp.theme.grey,
              ),
              const SizedBox(height: 24),
              const RoundButton(icon: ChatApp.arrow_right),
              const SizedBox(height: 24),
              const PillButton(text: 'Login'),
              const SizedBox(height: 24),
              Icon(ChatApp.arrow_right, color: tp.theme.black),
              Icon(ChatApp.attach, color: tp.theme.black),
              Icon(ChatApp.check, color: tp.theme.black),
              Icon(ChatApp.check_all, color: tp.theme.black),
              Icon(ChatApp.check_circle, color: tp.theme.black),
              Icon(ChatApp.checkmark, color: tp.theme.black),
              Icon(ChatApp.close, color: tp.theme.black),
              Icon(ChatApp.copy, color: tp.theme.black),
              Icon(ChatApp.curve_line_left_up, color: tp.theme.black),
              Icon(ChatApp.delete, color: tp.theme.black),
              Icon(ChatApp.delete_cirlce, color: tp.theme.black),
              Icon(ChatApp.download, color: tp.theme.black),
              Icon(ChatApp.error, color: tp.theme.black),
              Icon(ChatApp.eye, color: tp.theme.black),
              Icon(ChatApp.flag, color: tp.theme.black),
              Icon(ChatApp.gallery, color: tp.theme.black),
              Icon(ChatApp.group, color: tp.theme.black),
              Icon(ChatApp.left_arrow_circle, color: tp.theme.black),
              Icon(ChatApp.left_chevron, color: tp.theme.black),
              Icon(ChatApp.lightning_command_runner, color: tp.theme.black),
              Icon(ChatApp.lol, color: tp.theme.black),
              Icon(ChatApp.love, color: tp.theme.black),
              Icon(ChatApp.mention, color: tp.theme.black),
              Icon(ChatApp.menu_horizontal, color: tp.theme.black),
              Icon(ChatApp.menu_vertical, color: tp.theme.black),
              Icon(ChatApp.message, color: tp.theme.black),
              Icon(ChatApp.mute, color: tp.theme.black),
              Icon(ChatApp.pencil_new, color: tp.theme.black),
              Icon(ChatApp.reply, color: tp.theme.black),
              Icon(ChatApp.right_chevron, color: tp.theme.black),
              Icon(ChatApp.search, color: tp.theme.black),
              Icon(ChatApp.setting, color: tp.theme.black),
              Icon(ChatApp.share, color: tp.theme.black),
              Icon(ChatApp.share_1, color: tp.theme.black),
              Icon(ChatApp.thread_reply, color: tp.theme.black),
              Icon(ChatApp.thumbs_down, color: tp.theme.black),
              Icon(ChatApp.thumbs_up, color: tp.theme.black),
              Icon(ChatApp.top_arrow_circle, color: tp.theme.black),
              Icon(ChatApp.type_no_camera_permissions, color: tp.theme.black),
              Icon(ChatApp.type_no_channel, color: tp.theme.black),
              Icon(ChatApp.type_no_search_results, color: tp.theme.black),
              Icon(ChatApp.type_type4, color: tp.theme.black),
              Icon(ChatApp.type_type5, color: tp.theme.black),
              Icon(ChatApp.unmute, color: tp.theme.black),
              Icon(ChatApp.user, color: tp.theme.black),
              Icon(ChatApp.user_add, color: tp.theme.black),
              Icon(ChatApp.user_ban, color: tp.theme.black),
              Icon(ChatApp.user_remove, color: tp.theme.black),
              Icon(ChatApp.wut, color: tp.theme.black),
              Text(
                'Placeholder text to test the text',
                style: ts.captionBold(),
              ),
              Text(
                'Placeholder text to test the text',
                style: ts.footnote(),
              ),
              Text(
                'Placeholder text to test the text',
                style: ts.footnoteBold(),
              ),
              Text(
                'Placeholder text to test the text',
                style: ts.body(),
              ),
              Text(
                'Placeholder text to test the text',
                style: ts.bodyBold(),
              ),
              Text(
                'Placeholder text to test the text',
                style: ts.headline(),
              ),
              Text(
                'Placeholder text to test the text',
                style: ts.headlineBold(),
              ),
              Text(
                'Placeholder text to test the text',
                style: ts.title(),
              ),
              Container(
                height: 50,
                color: tp.theme.black,
              ),
              Container(
                height: 50,
                color: tp.theme.grey,
              ),
              Container(
                height: 50,
                color: tp.theme.greyGainsboro,
              ),
              Container(
                height: 50,
                color: tp.theme.greyWhisper,
              ),
              Container(
                height: 50,
                color: tp.theme.whiteSmoke,
              ),
              Container(
                height: 50,
                color: tp.theme.whiteSnow,
              ),
              Container(
                height: 50,
                color: tp.theme.white,
              ),
              Container(
                height: 50,
                color: tp.theme.blueAlice,
              ),
              Container(
                height: 50,
                color: tp.theme.accentBlue,
              ),
              Container(
                height: 50,
                color: tp.theme.accentGreen,
              ),
              Container(
                height: 50,
                color: tp.theme.accentRed,
              ),
              Container(
                height: 50,
                color: tp.theme.buttonText,
              ),
              Container(
                height: 50,
                color: tp.theme.buttonBackground,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
