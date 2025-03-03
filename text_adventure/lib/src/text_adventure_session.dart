import 'dart:async';

import 'package:collection/collection.dart';
import 'package:text_adventure/text_adventure.dart';

class TextAdventureSessionEvent {
  const TextAdventureSessionEvent({
    required this.message,
  });
  final String message;
}

class TextAdventureSession {
  TextAdventureSession({
    required this.game,
    required this.progress,
  });

  final TextAdventureConfiguration game;
  TextAdventureProgress progress;
  final _eventsController =
      StreamController<TextAdventureSessionEvent>.broadcast();
  Stream<TextAdventureSessionEvent> get events => _eventsController.stream;

  void loadProgress(TextAdventureProgress progress) {
    this.progress = progress;
  }

  Location get currentLocation {
    final LocationConfiguration locationConfig;
    if (progress.currentLocationId == null) {
      locationConfig = game.locations.first;
    } else {
      locationConfig = game.locations.firstWhere(
        (location) => location.id == progress.currentLocationId,
      );
    }
    final description = locationConfig.description.where(
      (d) => d.condition == null || d.condition!.evaluate(this),
    );
    return locationConfig.copyWith(description: description.toList());
  }

  /// Returns the list of actions the user can perform based on the current location.
  List<Action> get currentActions {
    final locationConfig = game.locations.firstWhereOrNull(
          (location) => location.id == progress.currentLocationId,
        ) ??
        game.locations.first;

    return locationConfig.actions
        .where((action) =>
            action.condition != null ? action.condition!.evaluate(this) : true)
        .toList();
  }

  Map<Item, int> get inventory {
    return Map.fromEntries(
      progress.inventory.entries.where((entry) => entry.value > 0).map((entry) {
        final item = game.items.firstWhere((item) => item.id == entry.key);
        return MapEntry(item, entry.value);
      }),
    );
  }

  void performAction(Action action) {
    action as ActionConfiguration;

    action.effect.apply(this);

    if (action.message != null) {
      _eventsController.add(
        TextAdventureSessionEvent(
          message: action.message!,
        ),
      );
    }
  }
}
