import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

import '../../flut_design_system_duck.dart';

class DuckSnackbar {
  static success({
    required BuildContext context,
    required String? message,
    required GlobalKey<ScaffoldState> scaffoldKey,
  }) {
    final snackBar = _snackBar(
      context,
      message,
      UniconsLine.check_circle,
      DuckColors.success,
    );

    if (message != null) _show(scaffoldKey, snackBar);
  }

  static info({
    required BuildContext context,
    required String? message,
    required GlobalKey<ScaffoldState> scaffoldKey,
  }) {
    final snackBar = _snackBar(
      context,
      message,
      UniconsLine.info,
      DuckColors.info,
    );

    if (message != null) _show(scaffoldKey, snackBar);
  }

  static error({
    required BuildContext context,
    required String? message,
    required GlobalKey<ScaffoldState> scaffoldKey,
  }) {
    final snackBar = _snackBar(
      context,
      message,
      UniconsLine.times_circle,
      DuckColors.error,
    );

    if (message != null) _show(scaffoldKey, snackBar);
  }

  static SnackBar _snackBar(
    BuildContext context,
    message,
    IconData iconData,
    Color color,
  ) {
    return SnackBar(
      backgroundColor: color,
      action: _buildSnackBarAction(context),
      content: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _buildIcon(iconData),
          _buildText(context, message),
        ],
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(14),
          topRight: Radius.circular(14),
        ),
      ),
    );
  }

  static SnackBarAction _buildSnackBarAction(BuildContext context) {
    return SnackBarAction(
      label: 'Fechar',
      textColor: Colors.white,
      onPressed: () {},
    );
  }

  static Expanded _buildText(BuildContext context, message) {
    return Expanded(
      child: Text(
        message,
        style: Theme.of(context).textTheme.subtitle2?.copyWith(
              fontWeight: FontWeight.w500,
            ),
      ),
    );
  }

  static Padding _buildIcon(IconData iconData) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 8.0,
      ),
      child: Icon(
        iconData,
      ),
    );
  }

  static _show(GlobalKey<ScaffoldState> scaffoldKey, SnackBar snackBar) {
    scaffoldKey.currentState?.showSnackBar(
      snackBar,
    );
  }
}
