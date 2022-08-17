import 'package:floor/floor.dart';

import 'user_entity.dart';

@Entity(
  tableName: 'ShoppingCart',
  foreignKeys: [
    ForeignKey(
      childColumns: ['userId'],
      parentColumns: ['id'],
      entity: User,
    )
  ],
)
class ShoppingCart {
  @PrimaryKey()
  @ColumnInfo(name: 'id')
  final String id;
  @ColumnInfo(name: 'userId')
  final String userId;

  ShoppingCart(this.id, this.userId);
}
