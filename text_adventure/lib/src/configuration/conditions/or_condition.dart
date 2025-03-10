import 'package:text_adventure/text_adventure.dart';

class OrCondition extends Condition {
  OrCondition(this.conditions);

  final List<Condition> conditions;

  @override
  bool evaluate(TextAdventureSession session) {
    return conditions.any((e) => e.evaluate(session));
  }
}
