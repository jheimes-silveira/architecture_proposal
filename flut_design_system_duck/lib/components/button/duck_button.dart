import 'package:flutter/material.dart';

import 'duck_button_elevated.dart';
import 'duck_button_outlined.dart';
import 'duck_button_text.dart';

enum DuckButtonType { text, outlined, elevated }

class DuckButton extends StatelessWidget {
  final ButtonStyle? style;
  final DuckButtonType type;
  final Widget? child;
  final String? text;
  final Function? onPressed;
  final Function? onLongPress;
  final bool enabled;
  final bool? loading;

  DuckButton({
    this.type = DuckButtonType.elevated,
    this.child,
    this.onPressed,
    this.text,
    this.enabled = true,
    this.loading,
    this.style,
    this.onLongPress,
  });

  @override
  Widget build(BuildContext context) {
    if (type == DuckButtonType.outlined)
      return DuckButtonOutlined(
        enabled: enabled,
        loading: loading,
        onPressed: onPressed,
        onLongPress: onLongPress,
        child: child,
        text: text,
        style: style ?? Theme.of(context).outlinedButtonTheme.style,
      );

    if (type == DuckButtonType.text)
      return DuckButtonText(
        enabled: enabled,
        loading: loading,
        onPressed: onPressed,
        onLongPress: onLongPress,
        child: child,
        text: text,
        style: style ?? Theme.of(context).textButtonTheme.style,
      );

    DuckButtonText(
      enabled: enabled,
      loading: loading,
      onPressed: onPressed,
      onLongPress: onLongPress,
      child: child,
      text: text,
      style: style ?? Theme.of(context).textButtonTheme.style,
    );
    return DuckButtonElevated(
      enabled: enabled,
      loading: loading,
      onPressed: onPressed,
      onLongPress: onLongPress,
      child: child,
      text: text,
      style: style ?? Theme.of(context).elevatedButtonTheme.style,
    );
  }
}
