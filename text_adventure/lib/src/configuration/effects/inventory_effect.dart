import 'package:text_adventure/src/exceptions/invalid_item_exception.dart';
import 'package:text_adventure/text_adventure.dart';

/// An effect that modifies the player's inventory.
///
/// If [add] is not `null`, the effect will add [add] items of [itemId] to the player's inventory.
/// If [set] is not `null`, the effect will set the number of items of [itemId] in the player's inventory to [set].
/// If [remove] is not `null`, the effect will remove [remove] items of [itemId] from the player's inventory.
///
/// Only one of [add], [set], or [remove] must be provided.
class InventoryEffect extends Effect {
  InventoryEffect(
    this.itemId, {
    this.add,
    this.set,
    this.remove,
  }) {
    assert((add != null ? 1 : 0) +
            (set != null ? 1 : 0) +
            (remove != null ? 1 : 0) ==
        1);
  }

  final String itemId;
  final int? add;
  final int? set;
  final int? remove;

  @override
  void apply(TextAdventureSession session) {
    if (session.game.items.map((e) => e.id).contains(itemId) == false) {
      throw InvalidItemIdException(itemId: itemId);
    }

    if (add != null) {
      session.progress.addItem(itemId, add!);
    } else if (set != null) {
      session.progress.setItem(itemId, set!);
    } else if (remove != null) {
      session.progress.addItem(itemId, -remove!);
    }
  }
}
