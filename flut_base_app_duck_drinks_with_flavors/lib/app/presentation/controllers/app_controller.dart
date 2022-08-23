import 'package:flut_micro_commons_dependencies/flut_micro_commons_dependencies.dart';
import 'package:flut_micro_commons_shared/flut_micro_commons_shared.dart';
import 'package:mobx/mobx.dart';

part 'app_controller.g.dart';

final $AppController = Bind.singleton(
  (i) => AppController(i()),
);

class AppController = _AppControllerBase with _$AppController;

abstract class _AppControllerBase with Store {
  final Environment environment;

  @observable
  String? versionName;

  @observable
  String? buildNumber;

  _AppControllerBase(this.environment);

  @action
  Future<void> initPackageInfo() async {
    final info = await PackageInfo.fromPlatform();
    versionName = info.version;
    buildNumber = info.buildNumber;
  }

  Future loadLangs() async {
    LocalJsonLocalization.delegate.directories = [
      'packages/flut_micro_app_home/assets/lang',
    ];
  }
}
