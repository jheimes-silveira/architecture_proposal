import 'package:flut_micro_commons_dependencies/flut_micro_commons_dependencies.dart';
import 'package:mobx/mobx.dart';

part 'app_controller.g.dart';

final $AppController = BindInject(
  (i) => AppController(),
  isSingleton: true,
  isLazy: true,
);

class AppController = _AppControllerBase with _$AppController;

abstract class _AppControllerBase with Store {
  Future loadLangs() async {
    Localization.setTranslationDirectories([
      'packages/flut_micro_app_home/assets/lang',
    ]);
    await Localization.configuration(defaultLang: 'pt_BR');
    print('sentences ${Localization.sentences}');
  }
}
