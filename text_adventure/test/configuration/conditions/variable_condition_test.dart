import 'package:test/test.dart';
import 'package:text_adventure/src/configuration/conditions/inventory_condition.dart';
import 'package:text_adventure/src/configuration/conditions/variable_condition.dart';
import 'package:text_adventure/src/configuration/variables/bool_variable.dart';
import 'package:text_adventure/src/configuration/variables/int_variable.dart';
import 'package:text_adventure/src/exceptions/invalid_variable_exception.dart';
import 'package:text_adventure/text_adventure.dart';

void main() {
  late TextAdventureSession session;

  setUp(() {
    final game = TextAdventureConfiguration(
      variables: [
        BoolVariable(id: 'lightOn', initialValue: false),
        IntVariable(id: 'experience', initialValue: 0),
        IntVariable(id: 'karma', initialValue: 1000),
      ],
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
      variables: {'experience': 500},
    );
    session = TextAdventureSession(game: game, progress: progress);
  });

  group(
    'Constructor',
    () {
      test('throws exception when no condition is provided', () {
        expect(
          () => InventoryCondition('gold'),
          throwsA(isA<AssertionError>()),
        );
      });

      test('throws exception when more than one condition is provided', () {
        expect(
          () => InventoryCondition('gold', equals: 100, notEquals: 200),
          throwsA(isA<AssertionError>()),
        );
      });
    },
  );

  group('invalid variable', () {
    test('throws exception when variable id is not in the game', () {
      final condition = VariableCondition('invalid', equals: 100);
      expect(() => condition.evaluate(session),
          throwsA(isA<InvalidVariableException>()));
    });
  });

  group('Equals', () {
    test('returns true when variable amount equals the expected amount', () {
      final condition = VariableCondition('experience', equals: 500);
      expect(condition.evaluate(session), isTrue);
    });

    test(
        'returns false when variable amount does not equal the expected amount',
        () {
      final condition = VariableCondition('experience', equals: 200);
      expect(condition.evaluate(session), isFalse);
    });
  });

  group('Not equals', () {
    test('returns true when variable amount does not equal the expected amount',
        () {
      final condition = VariableCondition('experience', notEquals: 200);
      expect(condition.evaluate(session), isTrue);
    });

    test('returns false when variable amount equals the expected amount', () {
      final condition = VariableCondition('experience', notEquals: 500);
      expect(condition.evaluate(session), isFalse);
    });
  });

  group('More than', () {
    test('returns true when variable amount is more than the expected amount',
        () {
      final condition = VariableCondition('experience', moreThan: 400);
      expect(condition.evaluate(session), isTrue);
    });

    test(
        'returns false when variable amount is not more than the expected amount',
        () {
      final condition = VariableCondition('experience', moreThan: 600);
      expect(condition.evaluate(session), isFalse);
    });
  });

  group('Less than', () {
    test('returns true when variable amount is less than the expected amount',
        () {
      final condition = VariableCondition('experience', lessThan: 600);
      expect(condition.evaluate(session), isTrue);
    });

    test(
        'returns false when variable amount is not less than the expected amount',
        () {
      final condition = VariableCondition('experience', lessThan: 400);
      expect(condition.evaluate(session), isFalse);
    });
  });

  group('More than or equals', () {
    test(
        'returns true when variable amount is more than or equals the expected amount',
        () {
      final condition = VariableCondition('experience', moreThanOrEquals: 500);
      expect(condition.evaluate(session), isTrue);
    });

    test(
        'returns false when variable amount is not more than or equals the expected amount',
        () {
      final condition = VariableCondition('experience', moreThanOrEquals: 600);
      expect(condition.evaluate(session), isFalse);
    });
  });

  group('Less than or equals', () {
    test(
        'returns true when variable amount is less than or equals the expected amount',
        () {
      final condition = VariableCondition('experience', lessThanOrEquals: 500);
      expect(condition.evaluate(session), isTrue);
    });

    test(
        'returns false when variable amount is not less than or equals the expected amount',
        () {
      final condition = VariableCondition('experience', lessThanOrEquals: 400);
      expect(condition.evaluate(session), isFalse);
    });
  });
}
