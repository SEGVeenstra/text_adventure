import 'package:test/test.dart';
import 'package:text_adventure/src/configuration/conditions/inventory_condition.dart';
import 'package:text_adventure/src/exceptions/invalid_item_exception.dart';
import 'package:text_adventure/text_adventure.dart';

void main() {
  late TextAdventureSession session;

  setUp(() {
    final game = TextAdventureConfiguration(
      variables: [],
      items: [
        Item(id: 'gold', name: 'Gold', description: 'Gold'),
        Item(id: 'diamond', name: 'Diamond', description: 'Diamonds'),
      ],
      locations: [],
      meta: MetaConfiguration(
        title: 'title',
        version: Version(1, 0, 1),
      ),
    );
    final progress = TextAdventureProgress(
      inventory: {'gold': 100},
    );
    session = TextAdventureSession(game: game, progress: progress);
  });

  group(
    'Constructor',
    () {},
  );

  group('Invalid item', () {
    test('throws exception when item id is not in the game', () {
      final condition = InventoryCondition(itemId: 'invalid', equals: 100);
      expect(() => condition.evaluate(session),
          throwsA(isA<InvalidItemIdException>()));
    });
  });

  group('Equals', () {
    test('returns true when inventory amount equals the expected amount', () {
      final condition = InventoryCondition(itemId: 'gold', equals: 100);
      expect(condition.evaluate(session), isTrue);
    });

    test(
        'returns false when inventory amount does not equal the expected amount',
        () {
      final condition = InventoryCondition(itemId: 'gold', equals: 200);
      expect(condition.evaluate(session), isFalse);
    });
  });

  group('Not equals', () {
    test(
        'returns true when inventory amount does not equal the expected amount',
        () {
      final condition = InventoryCondition(itemId: 'gold', notEquals: 200);
      expect(condition.evaluate(session), isTrue);
    });

    test('returns false when inventory amount equals the expected amount', () {
      final condition = InventoryCondition(itemId: 'gold', notEquals: 100);
      expect(condition.evaluate(session), isFalse);
    });
  });

  group('More than', () {
    test('returns true when inventory amount is more than the expected amount',
        () {
      final condition = InventoryCondition(itemId: 'gold', moreThan: 50);
      expect(condition.evaluate(session), isTrue);
    });

    test(
        'returns false when inventory amount is not more than the expected amount',
        () {
      final condition = InventoryCondition(itemId: 'gold', moreThan: 200);
      expect(condition.evaluate(session), isFalse);
    });
  });

  group('Less than', () {
    test('returns true when inventory amount is less than the expected amount',
        () {
      final condition = InventoryCondition(itemId: 'gold', lessThan: 200);
      expect(condition.evaluate(session), isTrue);
    });

    test(
        'returns false when inventory amount is not less than the expected amount',
        () {
      final condition = InventoryCondition(itemId: 'gold', lessThan: 50);
      expect(condition.evaluate(session), isFalse);
    });
  });

  group('More than or equals', () {
    test(
        'returns true when inventory amount is more than or equals the expected amount',
        () {
      final condition =
          InventoryCondition(itemId: 'gold', moreThanOrEquals: 100);
      expect(condition.evaluate(session), isTrue);
    });

    test(
        'returns false when inventory amount is not more than or equals the expected amount',
        () {
      final condition =
          InventoryCondition(itemId: 'gold', moreThanOrEquals: 200);
      expect(condition.evaluate(session), isFalse);
    });
  });

  group('Less than or equals', () {
    test(
        'returns true when inventory amount is less than or equals the expected amount',
        () {
      final condition =
          InventoryCondition(itemId: 'gold', lessThanOrEquals: 200);
      expect(condition.evaluate(session), isTrue);
    });

    test(
        'returns false when inventory amount is not less than or equals the expected amount',
        () {
      final condition =
          InventoryCondition(itemId: 'gold', lessThanOrEquals: 50);
      expect(condition.evaluate(session), isFalse);
    });
  });
}
