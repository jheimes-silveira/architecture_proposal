import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class DuckProgress extends StatelessWidget {
  final Color? valueColor;
  final bool visible;
  final double size;

  const DuckProgress({
    Key? key,
    this.valueColor,
    this.visible = true,
    this.size = 20.0,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    if (!visible) {
      return Container();
    }
    return SpinKitThreeBounce(
      color: valueColor ?? Theme.of(context).primaryColor,
      size: size,
    );
  }
}
