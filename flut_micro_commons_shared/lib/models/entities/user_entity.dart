import 'package:floor/floor.dart';

@Entity(
  tableName: 'User',
)
class User {
  @primaryKey
  final String id;
  final String username;
  final String password;
  final String image;

  User({
    required this.id,
    required this.username,
    required this.password,
    required this.image,
  });
}
