import 'package:dart_mappable/dart_mappable.dart';
import 'package:text_adventure/src/configuration/location_configuration.dart';
import 'package:text_adventure/src/configuration/meta_configuration.dart';
import 'package:text_adventure/src/configuration/variables/variable.dart';
import 'package:text_adventure/src/inventory_item.dart';

part 'text_adventure_configuration.mapper.dart';

/// A class representing a text-based game.
///
/// This is purly the configuration of the game which never actually changes.
@MappableClass()
class TextAdventureConfiguration with TextAdventureConfigurationMappable {
  TextAdventureConfiguration({
    required this.locations,
    required this.items,
    required this.variables,
    required this.meta,
  });

  static final fromMap = TextAdventureConfigurationMapper.fromMap;
  static final fromJson = TextAdventureConfigurationMapper.fromJson;

  @MappableField(key: 'locations')
  final List<LocationConfiguration> locations;

  @MappableField(key: 'items')
  final List<InventoryItem> items;

  @MappableField(key: 'variables')
  final List<Variable> variables;

  @MappableField(key: 'meta')
  final MetaConfiguration meta;
}
