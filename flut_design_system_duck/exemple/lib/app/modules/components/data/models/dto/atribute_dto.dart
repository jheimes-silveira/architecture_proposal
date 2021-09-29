class AtributeDto {
  final String type;
  final String name;
  final List<dynamic>? options;
  dynamic value;

  AtributeDto({
    required this.type,
    required this.name,
    this.options,
    this.value,
  });

  String get toStringValue {
    if (type == 'String' && value != null) return '\'$value\'';
    if (type == 'String?' && value != null) return '\'$value\'';

    return value.toString();
  }
}
