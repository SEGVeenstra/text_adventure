import 'package:text_adventure/src/configuration/conditions/condition.dart';
import 'package:text_adventure/src/exceptions/invalid_item_exception.dart';
import 'package:text_adventure/src/text_adventure_session.dart';

class InventoryCondition extends Condition {
  InventoryCondition({
    required this.itemId,
    this.equals,
    this.notEquals,
    this.moreThan,
    this.lessThan,
    this.moreThanOrEquals,
    this.lessThanOrEquals,
  }) {
    assert(
      equals != null ||
          notEquals != null ||
          moreThan != null ||
          lessThan != null ||
          moreThanOrEquals != null ||
          lessThanOrEquals != null,
      'At least one condition must be provided',
    );
    assert(
      (equals == null ? 0 : 1) +
              (notEquals == null ? 0 : 1) +
              (moreThan == null ? 0 : 1) +
              (lessThan == null ? 0 : 1) +
              (moreThanOrEquals == null ? 0 : 1) +
              (lessThanOrEquals == null ? 0 : 1) ==
          1,
      'Only one condition can be provided',
    );
  }
  final String itemId;

  final int? equals;
  final int? notEquals;
  final int? moreThan;
  final int? lessThan;
  final int? moreThanOrEquals;
  final int? lessThanOrEquals;

  @override
  bool evaluate(TextAdventureSession session) {
    session.game.items.firstWhere(
      (element) => element.id == itemId,
      orElse: () => throw InvalidItemIdException(itemId: itemId),
    );
    final currentAmountInProgress = session.progress.inventory[itemId] ?? 0;

    if (equals != null) {
      return currentAmountInProgress == equals;
    } else if (notEquals != null) {
      return currentAmountInProgress != notEquals;
    } else if (moreThan != null) {
      return currentAmountInProgress > moreThan!;
    } else if (lessThan != null) {
      return currentAmountInProgress < lessThan!;
    } else if (moreThanOrEquals != null) {
      return currentAmountInProgress >= moreThanOrEquals!;
    } else if (lessThanOrEquals != null) {
      return currentAmountInProgress <= lessThanOrEquals!;
    }

    return false;
  }
}
