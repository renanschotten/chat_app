// ignore_for_file: constant_identifier_names

import 'package:flutter/widgets.dart';

class ChatApp {
  ChatApp._();

  static const _kFontFam = 'ChatApp';
  static const String? _kFontPkg = null;

  static const IconData arrow_right =
      IconData(0xe800, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData attach =
      IconData(0xe801, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData checkmark =
      IconData(0xe802, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData check_circle =
      IconData(0xe803, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData close =
      IconData(0xe804, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData copy =
      IconData(0xe805, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData curve_line_left_up =
      IconData(0xe806, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData delete_cirlce =
      IconData(0xe807, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData delete =
      IconData(0xe808, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData download =
      IconData(0xe809, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData error =
      IconData(0xe80a, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData flag =
      IconData(0xe80b, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData gallery =
      IconData(0xe80c, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData group =
      IconData(0xe80d, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData left_arrow_circle =
      IconData(0xe80e, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData left_chevron =
      IconData(0xe80f, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData lightning_command_runner =
      IconData(0xe810, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData lol =
      IconData(0xe811, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData love =
      IconData(0xe812, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData mention =
      IconData(0xe813, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData menu_horizontal =
      IconData(0xe814, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData menu_vertical =
      IconData(0xe815, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData message =
      IconData(0xe816, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData mute =
      IconData(0xe817, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData pencil_new =
      IconData(0xe818, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData right_chevron =
      IconData(0xe819, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData search =
      IconData(0xe81a, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData setting =
      IconData(0xe81b, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData share =
      IconData(0xe81c, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData share_1 =
      IconData(0xe81d, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData thread_reply =
      IconData(0xe81e, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData thumbs_down =
      IconData(0xe81f, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData thumbs_up =
      IconData(0xe820, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData top_arrow_circle =
      IconData(0xe821, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData unmute =
      IconData(0xe822, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData user_add =
      IconData(0xe823, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData user_ban =
      IconData(0xe824, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData user_remove =
      IconData(0xe825, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData user =
      IconData(0xe826, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData wut =
      IconData(0xe827, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData check_all =
      IconData(0xe828, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData check =
      IconData(0xe829, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData eye =
      IconData(0xe82a, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData reply =
      IconData(0xe82b, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData type_no_camera_permissions =
      IconData(0xe82c, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData type_no_channel =
      IconData(0xe82d, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData type_no_search_results =
      IconData(0xe82e, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData type_type4 =
      IconData(0xe82f, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData type_type5 =
      IconData(0xe830, fontFamily: _kFontFam, fontPackage: _kFontPkg);

  static IconData parse(String icon) {
    const map = {
      'arrow_right': arrow_right,
      'attach': attach,
      'checkmark': checkmark,
      'check_circle': check_circle,
      'close': close,
      'copy': copy,
      'curve_line_left_up': curve_line_left_up,
      'delete_cirlce': delete_cirlce,
      'delete': delete,
      'download': download,
      'error': error,
      'flag': flag,
      'gallery': gallery,
      'group': group,
      'left_arrow_circle': left_arrow_circle,
      'left_chevron': left_chevron,
      'lightning_command_runner': lightning_command_runner,
      'lol': lol,
      'love': love,
      'mention': mention,
      'menu_horizontal': menu_horizontal,
      'menu_vertical': menu_vertical,
      'message': message,
      'mute': mute,
      'pencil_new': pencil_new,
      'right_chevron': right_chevron,
      'search': search,
      'setting': setting,
      'share': share,
      'share_1': share_1,
      'thread_reply': thread_reply,
      'thumbs_down': thumbs_down,
      'thumbs_up': thumbs_up,
      'top_arrow_circle': top_arrow_circle,
      'unmute': unmute,
      'user_add': user_add,
      'user_ban': user_ban,
      'user_remove': user_remove,
      'user': user,
      'wut': wut,
      'check_all': check_all,
      'check': check,
      'eye': eye,
      'reply': reply,
      'type_no_camera_permissions': type_no_camera_permissions,
      'type_no_channel': type_no_channel,
      'type_no_search_results': type_no_search_results,
      'type_type4': type_type4,
      'type_type5': type_type5,
    };

    return map[icon] ?? error;
  }
}
