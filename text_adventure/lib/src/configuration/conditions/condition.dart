import 'package:dart_mappable/dart_mappable.dart';
import 'package:text_adventure/text_adventure.dart';

part 'condition.mapper.dart';

@MappableClass(discriminatorKey: 'type')
abstract class Condition with ConditionMappable {
  const Condition();

  static final fromMap = ConditionMapper.fromMap;
  static final fromJson = ConditionMapper.fromJson;

  bool evaluate(TextAdventureSession session);
}
