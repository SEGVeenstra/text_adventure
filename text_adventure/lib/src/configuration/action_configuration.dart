import 'package:dart_mappable/dart_mappable.dart';
import 'package:text_adventure/text_adventure.dart';

part 'action_configuration.mapper.dart';

@MappableClass()
class ActionConfiguration with ActionConfigurationMappable implements Action {
  const ActionConfiguration({
    required this.label,
    required this.effect,
    required this.type,
    this.condition,
  });

  static final fromMap = ActionConfigurationMapper.fromMap;
  static final fromJson = ActionConfigurationMapper.fromJson;

  @MappableField(key: 'label')
  @override
  final String label;

  @MappableField(key: 'type')
  @override
  final ActionType type;

  @MappableField(key: 'effect')
  final List<Effect> effect;

  @MappableField(key: 'condition')
  final Condition? condition;
}
