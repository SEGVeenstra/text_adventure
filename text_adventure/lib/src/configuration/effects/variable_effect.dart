import 'package:collection/collection.dart';
import 'package:dart_mappable/dart_mappable.dart';
import 'package:text_adventure/src/exceptions/invalid_variable_exception.dart';
import 'package:text_adventure/text_adventure.dart';

part 'variable_effect.mapper.dart';

@MappableClass(discriminatorValue: 'variable')
class VariableEffect<T> extends Effect with VariableEffectMappable {
  VariableEffect(this.variableName, {this.set, this.add}) {
    assert(set != null || add != null);
    assert(set == null || add == null);
  }

  static final fromMap = VariableEffectMapper.fromMap;
  static final fromJson = VariableEffectMapper.fromJson;

  @MappableField(key: 'variableName')
  final String variableName;

  @MappableField(key: 'set')
  final T? set;

  @MappableField(key: 'add')
  final T? add;

  @override
  void apply(TextAdventureSession session) {
    final variableConfig =
        session.game.variables.firstWhereOrNull((e) => e.id == variableName);

    if (variableConfig == null) {
      throw InvalidVariableException(variableName: variableName);
    }

    if (set != null) {
      if (set is int && variableConfig is! IntVariable ||
          set is bool && variableConfig is! BoolVariable) {
        throw InvalidVariableException(variableName: variableName);
      }

      session.progress.setVariable(variableName, set);
    } else if (add != null) {
      if (add is int && variableConfig is! IntVariable ||
          variableConfig is BoolVariable) {
        throw InvalidVariableException(variableName: variableName);
      }

      session.progress
          .incrementVariable(variableName, add, variableConfig.initialValue);
    }
  }
}
