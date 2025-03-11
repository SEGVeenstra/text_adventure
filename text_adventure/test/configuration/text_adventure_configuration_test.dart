import 'package:test/test.dart';
import 'package:text_adventure/src/utils/json_ext.dart';
import 'package:text_adventure/text_adventure.dart';

void main() {
  group(
    'toYaml',
    () {
      test(
        'config toYaml',
        () {
          final config = TextAdventureConfiguration(
            meta: MetaConfiguration(
              title: 'title',
              version: 123,
            ),
            items: [
              InventoryItem(
                id: 'item1',
                name: 'Item 1',
                description: 'This is item 1',
              ),
              InventoryItem(
                id: 'item2',
                name: 'Item 2',
                description: 'This is item 2',
              ),
            ],
            locations: [],
            variables: [
              IntVariable(
                id: 'intVariable',
                initialValue: 100,
              ),
              BoolVariable(
                id: 'boolVariable',
                initialValue: false,
              ),
            ],
          );

          final yaml = config.toMap().toYaml();

          print(yaml);
        },
      );
    },
  );
}
