import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'iconography_controller.dart';

class IconographyPage extends StatefulWidget {
  @override
  _IconographyPageState createState() => _IconographyPageState();
}

class _IconographyPageState
    extends ModularState<IconographyPage, IconographyController> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(),
      body: Container(),
    );
  }
}
