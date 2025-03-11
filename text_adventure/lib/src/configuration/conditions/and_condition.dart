import 'package:dart_mappable/dart_mappable.dart';
import 'package:text_adventure/text_adventure.dart';

part 'and_condition.mapper.dart';

@MappableClass(discriminatorValue: 'and')
class AndCondition extends Condition with AndConditionMappable {
  AndCondition(this.conditions);

  static final fromMap = AndConditionMapper.fromMap;
  static final fromJson = AndConditionMapper.fromJson;

  @MappableField(key: 'conditions')
  final List<Condition> conditions;

  @override
  bool evaluate(TextAdventureSession session) {
    return conditions.every((e) => e.evaluate(session));
  }
}
