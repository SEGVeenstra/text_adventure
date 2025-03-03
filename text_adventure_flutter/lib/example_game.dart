import 'package:text_adventure/text_adventure.dart';

final exampleGame = TextAdventureConfiguration(
  meta: MetaConfiguration(
    title: 'Example',
    version: Version(1, 0, 0),
  ),
  variables: [
    BoolVariable(
      id: 'hall_light',
      initialValue: false,
    ),
    BoolVariable(
      id: 'pushed_button',
      initialValue: false,
    ),
  ],
  items: [
    Item(
      id: 'key',
      name: 'Key',
      description: 'A key you found in the kitchen.\nWhat could it be for?',
    ),
    Item(
      id: 'gold',
      name: 'Gold',
      description: 'Shiny gold coin(s).',
    ),
  ],
  locations: [
    LocationConfiguration(
      id: 'hall',
      name: 'Hallway',
      description: [
        DescriptionConfiguration(
          text: 'It\'s a bit dark in here.',
          condition: VariableCondition('hall_light', equals: false),
        ),
        DescriptionConfiguration(
          text: 'The hallway is well lit.',
          condition: VariableCondition('hall_light', equals: true),
        ),
      ],
      actions: [
        ActionConfiguration(
          type: ActionType.navigate,
          label: 'To the living room',
          condition: VariableCondition('hall_light', equals: true),
          effects: [
            NavigationEffect('living'),
          ],
        ),
        ActionConfiguration(
            type: ActionType.use,
            label: 'Turn on the light',
            condition: VariableCondition('hall_light', equals: false),
            effects: [
              VariableEffect('hall_light', set: true),
            ]),
        ActionConfiguration(
          type: ActionType.use,
          label: 'Turn off the light',
          condition: VariableCondition('hall_light', equals: true),
          effects: [
            VariableEffect('hall_light', set: false),
          ],
        ),
        ActionConfiguration(
          type: ActionType.use,
          label: 'Add gold',
          effects: [
            InventoryEffect('gold', add: 1),
          ],
        ),
        ActionConfiguration(
          type: ActionType.use,
          label: 'Remove gold',
          condition: InventoryCondition('gold', moreThan: 0),
          effects: [
            InventoryEffect('gold', remove: 1),
          ],
        ),
      ],
    ),
    LocationConfiguration(
      id: 'living',
      name: 'Living Room',
      description: [
        DescriptionConfiguration(text: 'The sofa looks very comfy!')
      ],
      actions: [
        ActionConfiguration(
          type: ActionType.navigate,
          label: 'To the hallway',
          effects: [
            NavigationEffect('hall'),
          ],
        ),
        ActionConfiguration(
          label: 'Push mysterious button',
          condition: VariableCondition('pushed_button', equals: false),
          effects: [
            VariableEffect('pushed_button', set: true),
          ],
          type: ActionType.use,
          message:
              "You hear a click from the kitchen door and the light on the lock turns green.",
        ),
        ActionConfiguration(
          type: ActionType.navigate,
          label: 'To the kitchen',
          condition: VariableCondition('pushed_button', equals: true),
          effects: [
            NavigationEffect('kitchen'),
          ],
        ),
      ],
    ),
    LocationConfiguration(
      id: 'kitchen',
      name: 'Kitchen',
      description: [
        DescriptionConfiguration(
            text: 'There is a very expensive looking fridge in here.'),
      ],
      actions: [
        ActionConfiguration(
          type: ActionType.navigate,
          label: 'To the living room',
          effects: [
            NavigationEffect('living'),
          ],
        ),
        ActionConfiguration(
          type: ActionType.use,
          label: 'Add key to inventory',
          condition: InventoryCondition('key', equals: 0),
          effects: [
            InventoryEffect('key', add: 1),
          ],
        ),
        ActionConfiguration(
          type: ActionType.use,
          label: 'Remove key from inventory',
          condition: InventoryCondition('key', moreThan: 0),
          effects: [
            InventoryEffect('key', set: 0),
          ],
        ),
      ],
    ),
  ],
);
