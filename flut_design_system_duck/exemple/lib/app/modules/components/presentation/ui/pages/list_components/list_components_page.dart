import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'list_components_controller.dart';

class ListComponentsPage extends StatefulWidget {
  @override
  _ListComponentsPageState createState() => _ListComponentsPageState();
}

class _ListComponentsPageState
    extends ModularState<ListComponentsPage, ListComponentsController> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final inputController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 32.0, left: 32.0, top: 16.0),
            child: TextField(
              controller: inputController,
              onChanged: (String term) {
                controller.filterListComponets(term);
              },
            ),
          ),
          Expanded(
            child: Card(
              elevation: 8,
              margin: EdgeInsets.all(32),
              child: Container(
                child: Observer(builder: (_) {
                  return ListView.builder(
                    itemCount: controller.componets.length,
                    itemBuilder: (BuildContext context, int index) {
                      final item = controller.componets[index];
                      return ListTile(
                        title: Text(item['name']),
                        onTap: item['action'],
                      );
                    },
                  );
                }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
