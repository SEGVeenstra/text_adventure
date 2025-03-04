import 'package:dart_mappable/dart_mappable.dart';

part 'text_adventure_progress.mapper.dart';

@MappableClass()
class TextAdventureProgress with TextAdventureProgressMappable {
  TextAdventureProgress({
    String? currentLocationId,
    Map<String, int>? inventory,
    Map<String, dynamic>? variables,
  })  : _currentLocationId = currentLocationId,
        inventory = inventory ?? {},
        variables = variables ?? {};

  @MappableField(key: 'currentLocationId')
  String? _currentLocationId;

  @MappableField(key: 'inventory')
  final Map<String, int> inventory;

  @MappableField(key: 'variables')
  final Map<String, dynamic> variables;

  String? get currentLocationId => _currentLocationId;

  void updateLocation(String locationId) {
    _currentLocationId = locationId;
  }

  void addItem(String itemId, [int amount = 1]) {
    inventory.update(itemId, (value) => value + amount, ifAbsent: () => amount);
  }

  void setItem(String itemId, int amount) {
    inventory.update(itemId, (value) => amount, ifAbsent: () => amount);
  }

  void setVariable(String id, dynamic value) {
    variables[id] = value;
  }

  void incrementVariable(String id, dynamic value, dynamic initialValue) {
    if (!variables.containsKey(id)) {
      variables[id] = initialValue;
    }
    variables[id] += value;
  }

  dynamic getVariable(String id) {
    return variables[id];
  }

  void clearVariable(String id) {
    variables.remove(id);
  }
}
