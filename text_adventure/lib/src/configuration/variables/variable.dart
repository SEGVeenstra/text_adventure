import 'package:dart_mappable/dart_mappable.dart';

part 'variable.mapper.dart';

@MappableClass(discriminatorKey: 'type')
abstract class Variable<T> with VariableMappable {
  Variable({
    required this.id,
    required this.initialValue,
  });

  static final fromMap = VariableMapper.fromMap;
  static final fromJson = VariableMapper.fromJson;

  @MappableField(key: 'id')
  final String id;

  @MappableField(key: 'initialValue')
  final T initialValue;
}
