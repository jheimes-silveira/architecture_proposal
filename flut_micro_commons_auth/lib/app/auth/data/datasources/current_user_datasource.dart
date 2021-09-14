import 'package:flut_micro_commons_auth/app/auth/domain/models/dtos/current_user_dto.dart';

abstract class CurrentUserDatasource {
  Future<CurrentUserDto> call();
}
  