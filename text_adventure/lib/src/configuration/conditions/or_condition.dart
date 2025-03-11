import 'package:dart_mappable/dart_mappable.dart';
import 'package:text_adventure/text_adventure.dart';

part 'or_condition.mapper.dart';

@MappableClass(discriminatorValue: 'or')
class OrCondition extends Condition with OrConditionMappable {
  OrCondition(this.conditions);

  static final fromMap = OrConditionMapper.fromMap;
  static final fromJson = OrConditionMapper.fromJson;

  @MappableField(key: 'conditions')
  final List<Condition> conditions;

  @override
  bool evaluate(TextAdventureSession session) {
    return conditions.any((e) => e.evaluate(session));
  }
}
