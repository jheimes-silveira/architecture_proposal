import 'package:exemple/app/core/utils/routers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'home_controller.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(),
      drawer: _buildDrawer(),
      body: RouterOutlet(),
    );
  }

  Drawer _buildDrawer() {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text('Painel'),
          ),
          ListTile(
            title: const Text('Pagina inicial'),
            onTap: () {
              Navigator.of(context).pop();
              Routers.goToMenuDashboard();
            },
          ),
          ListTile(
            title: const Text('typography'),
            onTap: () {
              Navigator.of(context).pop();
              Routers.goToMenuTypography();
            },
          ),
          ListTile(
            title: const Text('iconography'),
            onTap: () {
              Navigator.of(context).pop();
              Routers.goToMenuIconography();
            },
          ),
          ListTile(
            title: const Text('Componentes'),
            onTap: () {
              Navigator.of(context).pop();
              Routers.goToMenuListComponent();
            },
          ),
        ],
      ),
    );
  }
}
