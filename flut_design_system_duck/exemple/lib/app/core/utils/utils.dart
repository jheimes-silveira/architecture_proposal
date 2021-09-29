import 'package:flutter/services.dart';

class Utils {
  static clipboard(String copy) {
    Clipboard.setData(new ClipboardData(text: copy));
  }
}
