import 'package:test/test.dart';
import 'package:text_adventure/text_adventure.dart';

void main() {
  group(
    'fromJson',
    () {
      test(
        'should return a valid TextAdventureProgress instance',
        () {
          final jsonString = '''
{
  "location": "roomA",
  "inventory": {
    "key": 1,
    "gold": 123
  },
  "variables": {
    "pushed_button": true
  }
}
''';
          final result = TextAdventureProgress.fromJson(jsonString);
          expect(result, isA<TextAdventureProgress>());
          expect(result.currentLocationId, 'roomA');
          expect(result.inventory['key'], 1);
          expect(result.variables['pushed_button'], true);
        },
      );
    },
  );

  group(
    'toJson',
    () {
      test(
        'should return a valid JSON string',
        () {
          final progress = TextAdventureProgress(
            currentLocationId: 'roomA',
            inventory: {
              'key': 1,
              'gold': 123,
            },
            variables: {
              'pushed_button': true,
            },
          );
          final result = progress.toJson();
          expect(result,
              '{"location":"roomA","inventory":{"key":1,"gold":123},"variables":{"pushed_button":true}}');
        },
      );
    },
  );
}
