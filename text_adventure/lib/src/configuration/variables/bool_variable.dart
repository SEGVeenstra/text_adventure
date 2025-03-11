import 'package:dart_mappable/dart_mappable.dart';
import 'package:text_adventure/src/configuration/variables/variable.dart';

part 'bool_variable.mapper.dart';

@MappableClass(discriminatorValue: 'bool')
class BoolVariable extends Variable<bool> with BoolVariableMappable {
  BoolVariable({
    required super.id,
    super.initialValue = false,
  });

  static final fromMap = BoolVariableMapper.fromMap;
  static final fromJson = BoolVariableMapper.fromJson;
}
