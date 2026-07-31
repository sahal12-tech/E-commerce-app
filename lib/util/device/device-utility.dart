
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class EDeviceUtils {
  static void hideKeyboard(BuildContext context) {
   FocusScope.of(context).requestFocus(FocusNode());
  }

  static Future<void> setStatusBarColor (Color color) async {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: color)
    );
  }


}