import 'package:text_adventure/src/configuration/conditions/condition.dart';
import 'package:text_adventure/text_adventure.dart';

class AndCondition extends Condition {
  AndCondition(this.conditions);

  final List<Condition> conditions;

  @override
  bool evaluate(TextAdventureSession session) {
    return conditions.every((e) => e.evaluate(session));
  }
}
