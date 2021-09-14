import 'package:flut_micro_commons_auth/app/auth/domain/models/dtos/current_user_dto.dart';
import 'package:flut_micro_commons_auth/app/auth/domain/repositories/current_user_repository.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'current_user_usecase.dart';

final $CurrentUserImpUsecase = BindInject(
  (i) => CurrentUserImpUsecase(i.get()),
  isSingleton: true,
  isLazy: true,
);

class CurrentUserImpUsecase implements CurrentUserUsecase {
  final CurrentUserRepository _currentUserRepository;

  CurrentUserImpUsecase(this._currentUserRepository);
  
  @override
  Future<CurrentUserDto> call() {
    return _currentUserRepository();
  }
}
