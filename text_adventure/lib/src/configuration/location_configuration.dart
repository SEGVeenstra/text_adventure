import 'package:dart_mappable/dart_mappable.dart';
import 'package:text_adventure/text_adventure.dart';

part 'location_configuration.mapper.dart';

@MappableClass()
class LocationConfiguration
    with LocationConfigurationMappable
    implements Location {
  const LocationConfiguration({
    required this.id,
    required this.name,
    required this.description,
    required this.actions,
  });

  static final fromMap = LocationConfigurationMapper.fromMap;
  static final fromJson = LocationConfigurationMapper.fromJson;

  @MappableField(key: 'id')
  @override
  final String id;

  @MappableField(key: 'name')
  @override
  final String name;

  @MappableField(key: 'description')
  @override
  final List<DescriptionConfiguration> description;

  @MappableField(key: 'actions')
  @override
  final List<ActionConfiguration> actions;
}
