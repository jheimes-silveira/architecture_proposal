import 'package:flut_micro_commons_auth/app/auth/domain/models/dtos/current_user_dto.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../domain/repositories/current_user_repository.dart';

final $CurrentUserImpRepository = BindInject(
  (i) => CurrentUserImpRepository(i.get()),
  isSingleton: true,
  isLazy: true,
);

class CurrentUserImpRepository implements CurrentUserRepository {
  final CurrentUserRepository _currentUserRepository;

  CurrentUserImpRepository(this._currentUserRepository);

  @override
  Future<CurrentUserDto> call() {
    return _currentUserRepository();
  }
}
