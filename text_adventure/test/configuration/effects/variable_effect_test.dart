import 'package:test/test.dart';
import 'package:text_adventure/src/exceptions/invalid_variable_exception.dart';
import 'package:text_adventure/text_adventure.dart';

void main() {
  late TextAdventureSession session;

  setUp(() {
    final game = TextAdventureConfiguration(
      variables: [
        IntVariable(id: 'health', initialValue: 100),
        IntVariable(id: 'mana', initialValue: 0),
        BoolVariable(id: 'lightsOn', initialValue: true),
      ],
      items: [],
      locations: [],
      meta: MetaConfiguration(
        title: 'title',
        version: 1,
      ),
    );
    final progress = TextAdventureProgress(
      variables: {
        'mana': 0,
        'lightsOn': true,
      },
    );
    session = TextAdventureSession(game: game, progress: progress);
  });

  group('constructor', () {
    test('both add and set are not set', () {
      expect(
        () => VariableEffect('health', add: 10, set: 50),
        throwsA(isA<AssertionError>()),
      );
    });
  });

  group(
    'add',
    () {
      test('adds value to variable not in progress', () {
        final effect = VariableEffect('health', add: 10);
        effect.apply(session);
        expect(session.progress.getVariable('health'), 110);
      });

      test('adds value to variable already in progress', () {
        session.progress.setVariable('health', 50);
        final effect = VariableEffect('health', add: 10);
        effect.apply(session);
        expect(session.progress.getVariable('health'), 60);
      });

      test('throws exception for non-existent variable', () {
        final effect = VariableEffect('nonExistent', add: 10);
        expect(() => effect.apply(session),
            throwsA(isA<InvalidVariableException>()));
      });

      test('throws exception for invalid variable type', () {
        final effect = VariableEffect('lightsOn', add: 10);
        expect(() => effect.apply(session),
            throwsA(isA<InvalidVariableException>()));
      });
    },
  );

  group('set ', () {
    test('sets value to variable not in progress', () {
      final effect = VariableEffect('health', set: 50);
      effect.apply(session);
      expect(session.progress.getVariable('health'), 50);
    });

    test('sets value to variable already in progress', () {
      session.progress.setVariable('health', 50);
      final effect = VariableEffect('health', set: 10);
      effect.apply(session);
      expect(session.progress.getVariable('health'), 10);
    });

    test('throws exception for non-existent variable', () {
      final effect = VariableEffect('nonExistent', set: 10);
      expect(() => effect.apply(session),
          throwsA(isA<InvalidVariableException>()));
    });

    test('throws exception for invalid variable type', () {
      final effect = VariableEffect('lightsOn', set: 10);
      expect(() => effect.apply(session),
          throwsA(isA<InvalidVariableException>()));
    });
  });
}
