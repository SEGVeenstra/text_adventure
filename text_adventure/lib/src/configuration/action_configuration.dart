import 'package:text_adventure/text_adventure.dart';

class ActionConfiguration implements Action {
  const ActionConfiguration({
    required this.label,
    required this.effect,
    required this.type,
    this.condition,
  });

  @override
  final String label;

  @override
  final ActionType type;

  final List<Effect> effect;

  final Condition? condition;
}
