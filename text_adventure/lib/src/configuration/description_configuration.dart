import 'package:dart_mappable/dart_mappable.dart';
import 'package:text_adventure/src/configuration/conditions/condition.dart';
import 'package:text_adventure/src/description.dart';

part 'description_configuration.mapper.dart';

@MappableClass()
class DescriptionConfiguration
    with DescriptionConfigurationMappable
    implements Description {
  DescriptionConfiguration({
    this.condition,
    required this.text,
  });

  static final fromMap = DescriptionConfigurationMapper.fromMap;
  static final fromJson = DescriptionConfigurationMapper.fromJson;

  @MappableField(key: 'condition')
  final Condition? condition;

  @MappableField(key: 'text')
  @override
  final String text;
}
