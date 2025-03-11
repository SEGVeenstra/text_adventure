import 'package:dart_mappable/dart_mappable.dart';

part 'inventory_item.mapper.dart';

@MappableClass()
class InventoryItem with InventoryItemMappable {
  InventoryItem({
    required this.id,
    required this.name,
    required this.description,
  });

  static final fromMap = InventoryItemMapper.fromMap;
  static final fromJson = InventoryItemMapper.fromJson;

  @MappableField(key: 'id')
  final String id;

  @MappableField(key: 'name')
  final String name;

  @MappableField(key: 'description')
  final String description;
}
