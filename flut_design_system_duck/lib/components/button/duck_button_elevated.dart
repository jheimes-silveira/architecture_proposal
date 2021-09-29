import 'package:flut_design_system_duck/components/progress/duck_progress.dart';
import 'package:flutter/material.dart';

class DuckButtonElevated extends StatelessWidget {
  final ButtonStyle? style;

  final Widget? child;
  final String? text;
  final Function? onPressed;
  final Function? onLongPress;
  final bool? enabled;
  final bool? loading;

  DuckButtonElevated({
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
    Function? onPressed =
        (enabled == null || enabled == false || loading == true)
            ? null
            : this.onPressed;

    final onLongPress = (enabled == null || enabled == false || loading == true)
        ? null
        : this.onLongPress;

    double opacity = 1;
    var style = this.style ?? Theme.of(context).elevatedButtonTheme.style;

    if (onPressed == null) {
      onPressed = () {};
      opacity = 0.5;
      style = style?.copyWith(
        splashFactory: NoSplash.splashFactory,
      );
    }

    return Stack(
      children: [
        Opacity(
          opacity: opacity,
          child: ElevatedButton(
            onPressed: onPressed as void Function()?,
            onLongPress: onLongPress as void Function()?,
            child: _getChild(context),
            style: style,
          ),
        ),
        if (loading != null && loading!)
          Positioned.fill(
            child: Container(
              alignment: Alignment.center,
              child: Center(
                child: DuckProgress(
                  valueColor: Theme.of(context).indicatorColor,
                ),
              ),
            ),
          ),
      ],
    );
  }

  Widget? _getChild(BuildContext context) {
    if (loading != null && loading!)
      return Container(
        alignment: Alignment.center,
      );

    if (child != null) return child;

    if (text != null)
      return Container(
        alignment: Alignment.center,
        child: Text(text!),
      );

    return null;
  }
}
