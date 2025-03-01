import 'package:text_adventure/src/configuration/conditions/condition.dart';
import 'package:text_adventure/src/configuration/variables/bool_variable.dart';
import 'package:text_adventure/src/configuration/variables/int_variable.dart';
import 'package:text_adventure/src/exceptions/invalid_variable_exception.dart';
import 'package:text_adventure/src/text_adventure_session.dart';

class VariableCondition<T> extends Condition {
  VariableCondition(
    this.variableName, {
    this.equals,
    this.notEquals,
    this.moreThan,
    this.lessThan,
    this.moreThanOrEquals,
    this.lessThanOrEquals,
  });

  final String variableName;

  final T? equals;
  final T? notEquals;
  final T? moreThan;
  final T? lessThan;
  final T? moreThanOrEquals;
  final T? lessThanOrEquals;

  @override
  bool evaluate(TextAdventureSession session) {
    final variableConfig = session.game.variables.firstWhere(
        (e) => e.id == variableName,
        orElse: () =>
            throw InvalidVariableException(variableName: variableName));

    if (variableConfig is IntVariable && T != int ||
        variableConfig is BoolVariable && T != bool) {
      throw InvalidVariableException(variableName: variableName);
    }

    if (variableConfig is IntVariable) {
      final currentValue = session.progress.variables[variableName] as int? ??
          variableConfig.initialValue;

      if (equals != null) {
        return currentValue == equals;
      } else if (notEquals != null) {
        return currentValue != notEquals;
      } else if (moreThan != null) {
        return currentValue > (moreThan! as int);
      } else if (lessThan != null) {
        return currentValue < (lessThan! as int);
      } else if (moreThanOrEquals != null) {
        return currentValue >= (moreThanOrEquals as int);
      } else if (lessThanOrEquals != null) {
        return currentValue <= (lessThanOrEquals as int);
      }
    } else if (variableConfig is BoolVariable) {
      final currentValue = session.progress.variables[variableName] as bool? ??
          variableConfig.initialValue;

      if (equals != null) {
        return currentValue == equals;
      } else if (notEquals != null) {
        return currentValue != notEquals;
      }
    }

    return false;
  }
}
