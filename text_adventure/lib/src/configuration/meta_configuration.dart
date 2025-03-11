import 'package:dart_mappable/dart_mappable.dart';

part 'meta_configuration.mapper.dart';

@MappableClass()
class MetaConfiguration with MetaConfigurationMappable {
  const MetaConfiguration({
    required this.title,
    this.author,
    this.description,
    required this.version,
  });

  static final fromMap = MetaConfigurationMapper.fromMap;
  static final fromJson = MetaConfigurationMapper.fromJson;

  @MappableField(key: 'title')
  final String title;

  @MappableField(key: 'author')
  final String? author;

  @MappableField(key: 'description')
  final String? description;

  @MappableField(key: 'version')
  final int version;
}
