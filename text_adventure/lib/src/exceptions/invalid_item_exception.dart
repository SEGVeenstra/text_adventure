import 'package:text_adventure/src/exceptions/text_adventure_exception.dart';

class InvalidItemIdException extends TextAdventureException {
  InvalidItemIdException({required String itemId})
      : super(message: 'Item with id "$itemId" does not exisit.');
}
