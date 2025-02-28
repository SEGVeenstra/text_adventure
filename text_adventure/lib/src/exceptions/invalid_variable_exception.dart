import 'package:text_adventure/src/exceptions/text_adventure_exception.dart';

class InvalidVariableException extends TextAdventureException {
  InvalidVariableException({required String variableName})
      : super(message: 'Variable $variableName does not exist.');
}
