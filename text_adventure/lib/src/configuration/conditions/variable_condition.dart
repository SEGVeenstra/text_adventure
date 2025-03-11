import 'package:dart_mappable/dart_mappable.dart';
import 'package:text_adventure/src/configuration/conditions/condition.dart';
import 'package:text_adventure/src/configuration/variables/bool_variable.dart';
import 'package:text_adventure/src/configuration/variables/int_variable.dart';
import 'package:text_adventure/src/exceptions/invalid_variable_exception.dart';
import 'package:text_adventure/src/text_adventure_session.dart';

part 'variable_condition.mapper.dart';

@MappableClass(discriminatorValue: 'variable')
class VariableCondition<T> extends Condition with VariableConditionMappable {
  VariableCondition(
    this.variableName, {
    this.equals,
    this.notEquals,
    this.moreThan,
    this.lessThan,
    this.moreThanOrEquals,
    this.lessThanOrEquals,
  });

  static final fromMap = VariableConditionMapper.fromMap;
  static final fromJson = VariableConditionMapper.fromJson;

  @MappableField(key: 'variableName')
  final String variableName;

  @MappableField(key: 'equals')
  final T? equals;

  @MappableField(key: 'notEquals')
  final T? notEquals;

  @MappableField(key: 'moreThan')
  final T? moreThan;

  @MappableField(key: 'lessThan')
  final T? lessThan;

  @MappableField(key: 'moreThanOrEquals')
  final T? moreThanOrEquals;

  @MappableField(key: 'lessThanOrEquals')
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
