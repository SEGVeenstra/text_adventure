import 'package:dart_mappable/dart_mappable.dart';
import 'package:text_adventure/src/configuration/variables/variable.dart';

part 'int_variable.mapper.dart';

@MappableClass(discriminatorValue: 'int')
class IntVariable extends Variable<int> with IntVariableMappable {
  IntVariable({
    required super.id,
    super.initialValue = 0,
  });

  static final fromMap = IntVariableMapper.fromMap;
  static final fromJson = IntVariableMapper.fromJson;
}
