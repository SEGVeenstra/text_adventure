import 'package:test/test.dart';
import 'package:text_adventure/src/configuration/effects/inventory_effect.dart';
import 'package:text_adventure/src/exceptions/invalid_item_id_exception.dart';
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
    'invalid name',
    () {
      test('throws exception when item id is not in the game', () {
        final effect = InventoryEffect(itemId: 'invalid', add: 10);
        expect(() => effect.apply(session),
            throwsA(isA<InvalidItemIdException>()));
      });
    },
  );

  group(
    'add + set',
    () {
      test('throws exception when both add and set are provided', () {
        expect(
          () => InventoryEffect(itemId: 'gold', add: 1, set: 1),
          throwsA(isA<AssertionError>()),
        );
      });

      test('throws exception when neither add nor set are provided', () {
        expect(
          () => InventoryEffect(itemId: 'gold'),
          throwsA(isA<AssertionError>()),
        );
      });
    },
  );

  group('add ', () {
    test('with positive number adds item to inventory', () {
      final effect = InventoryEffect(itemId: 'gold', add: 10);
      effect.apply(session);
      expect(session.progress.inventory['gold'], 110);
    });

    test('with negative number subtracts item from inventory', () {
      final effect = InventoryEffect(itemId: 'gold', add: -5);
      effect.apply(session);
      expect(session.progress.inventory['gold'], 95);
    });
  });

  group('set', () {
    test(
        'when item is not in inventory sets the number of items in the inventory',
        () {
      final effect = InventoryEffect(itemId: 'diamond', set: 10);
      effect.apply(session);
      expect(session.progress.inventory['diamond'], 10);
    });

    test(
        'when item is already in inventory, overrides the number of items in the inventory',
        () {
      final effect = InventoryEffect(itemId: 'gold', set: 8);
      effect.apply(session);
      expect(session.progress.inventory['gold'], 8);
    });
  });
}
