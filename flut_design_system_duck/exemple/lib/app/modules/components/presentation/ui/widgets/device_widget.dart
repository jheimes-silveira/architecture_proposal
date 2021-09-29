import 'package:flutter/material.dart';

class DeviceWidget extends StatelessWidget {
  final Widget child;
  const DeviceWidget({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      height: 630,
      margin: EdgeInsets.all(32),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          width: 8,
          color: Colors.black,
        ),
      ),
      child: child,
    );
  }
}
