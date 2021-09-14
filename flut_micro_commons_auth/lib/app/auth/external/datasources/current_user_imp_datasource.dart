import 'package:flut_micro_commons_auth/app/auth/domain/models/dtos/current_user_dto.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../data/datasources/current_user_datasource.dart';

final $CurrentUserImpDatasource = BindInject(
  (i) => CurrentUserImpDatasource(),
  isSingleton: true,
  isLazy: true,
);

class CurrentUserImpDatasource implements CurrentUserDatasource {
  @override
  Future<CurrentUserDto> call() {
    // TODO: implement call
    throw UnimplementedError();
  }
}
  
  