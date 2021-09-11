import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'list_product_controller.dart';

class ListProductPage extends StatefulWidget {

  @override
  _ListProductPageState createState() => _ListProductPageState();
}

class _ListProductPageState extends ModularState<ListProductPage, ListProductController> {
  final GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(title: Text('List Product')),
      body: Container(),
    );
  }
}
          
          