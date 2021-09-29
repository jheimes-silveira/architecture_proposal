import 'package:exemple/app/core/utils/routers.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'list_components_controller.g.dart';

final $ListComponentsController = BindInject(
  (i) => ListComponentsController(),
  isSingleton: true,
  isLazy: true,
);

class ListComponentsController = _ListComponentsControllerBase
    with _$ListComponentsController;

abstract class _ListComponentsControllerBase with Store {
  List<Map<String, dynamic>> baseComponets = [
    {
      'name': 'Button',
      'action': () {
        Routers.goToButton();
      },
    },
    {
      'name': 'Text Field',
      'action': () {
        Routers.goToTextField();
      },
    },
    {
      'name': 'Snackbar',
      'action': () {
        Routers.goToSnackbar();
      },
    },
    {
      'name': 'Avatar',
      'action': () {
        Routers.goToAvatar();
      },
    },
    {
      'name': 'NetworkImage',
      'action': () {
        Routers.goToNetworkImage();
      },
    },
    {
      'name': 'Progress',
      'action': () {
        Routers.goToProgress();
      },
    },
  ];

  @observable
  ObservableList<Map<String, dynamic>> componets = ObservableList.of([]);

  _ListComponentsControllerBase() {
    filterListComponets('');
  }

  @action
  void filterListComponets(String query) {
    componets = ObservableList.of(
      baseComponets.where(
        (e) => e['name'].toLowerCase().contains(query.toLowerCase()),
      ),
    );
  }
}