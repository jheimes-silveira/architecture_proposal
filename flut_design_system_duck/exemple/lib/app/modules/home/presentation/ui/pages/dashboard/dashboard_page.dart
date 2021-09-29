import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'dashboard_controller.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState
    extends ModularState<DashboardPage, DashboardController> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: Container(
        padding: EdgeInsets.only(
          right: 32,
          left: 32,
          top: 32,
          bottom: 32,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Designer system Duck',
              style: Theme.of(context).textTheme.headline5,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Text(
                '''
Lorem ipsum dolor sit amet, consectetur adipiscing elit. In vulputate, sapien et tincidunt congue, orci diam congue turpis, non interdum urna orci sed lectus. Aliquam rhoncus tristique nisl et sodales. Nunc sed sapien enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vel malesuada nulla. Curabitur venenatis ut ante ut molestie. Donec id sapien nec risus consectetur hendrerit ac vel lectus. Sed a consectetur ligula. Ut non tempor est. Vestibulum euismod convallis maximus. Fusce tincidunt urna tortor, sit amet lobortis turpis bibendum eu.

Nam vitae congue est. Vivamus porttitor sagittis sollicitudin. Donec non luctus urna, in gravida magna. In porta ante sed turpis mattis scelerisque. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Duis in tellus blandit, hendrerit erat at, pretium ligula. Proin nec pretium dolor, sit amet placerat turpis. Quisque at felis augue. Integer eu porta neque. Cras convallis cursus quam vel tempor. Pellentesque ut hendrerit sapien, ut condimentum dui.
                ''',
              ),
            ),
            Text(
              'Breakpoints',
              style: Theme.of(context).textTheme.headline6,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Text(
                '''
Lorem ipsum dolor sit amet, consectetur adipiscing elit. In vulputate, sapien et tincidunt congue, orci diam congue turpis, non interdum urna orci sed lectus. Aliquam rhoncus tristique nisl et sodales. Nunc sed sapien enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vel malesuada nulla. Curabitur venenatis ut ante ut molestie. Donec id sapien nec risus consectetur hendrerit ac vel lectus. Sed a consectetur ligula. Ut non tempor est. Vestibulum euismod convallis maximus. Fusce tincidunt urna tortor, sit amet lobortis turpis bibendum eu.

Nam vitae congue est. Vivamus porttitor sagittis sollicitudin. Donec non luctus urna, in gravida magna. In porta ante sed turpis mattis scelerisque. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Duis in tellus blandit, hendrerit erat at, pretium ligula. Proin nec pretium dolor, sit amet placerat turpis. Quisque at felis augue. Integer eu porta neque. Cras convallis cursus quam vel tempor. Pellentesque ut hendrerit sapien, ut condimentum dui.
                ''',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
