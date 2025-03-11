// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'variable_condition.dart';

class VariableConditionMapper extends SubClassMapperBase<VariableCondition> {
  VariableConditionMapper._();

  static VariableConditionMapper? _instance;
  static VariableConditionMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = VariableConditionMapper._());
      ConditionMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'VariableCondition';
  @override
  Function get typeFactory => <T>(f) => f<VariableCondition<T>>();

  static String _$variableName(VariableCondition v) => v.variableName;
  static const Field<VariableCondition, String> _f$variableName =
      Field('variableName', _$variableName);
  static dynamic? _$equals(VariableCondition v) => v.equals;
  static dynamic _arg$equals<T>(f) => f<T>();
  static const Field<VariableCondition, dynamic> _f$equals =
      Field('equals', _$equals, opt: true, arg: _arg$equals);
  static dynamic? _$notEquals(VariableCondition v) => v.notEquals;
  static dynamic _arg$notEquals<T>(f) => f<T>();
  static const Field<VariableCondition, dynamic> _f$notEquals =
      Field('notEquals', _$notEquals, opt: true, arg: _arg$notEquals);
  static dynamic? _$moreThan(VariableCondition v) => v.moreThan;
  static dynamic _arg$moreThan<T>(f) => f<T>();
  static const Field<VariableCondition, dynamic> _f$moreThan =
      Field('moreThan', _$moreThan, opt: true, arg: _arg$moreThan);
  static dynamic? _$lessThan(VariableCondition v) => v.lessThan;
  static dynamic _arg$lessThan<T>(f) => f<T>();
  static const Field<VariableCondition, dynamic> _f$lessThan =
      Field('lessThan', _$lessThan, opt: true, arg: _arg$lessThan);
  static dynamic? _$moreThanOrEquals(VariableCondition v) => v.moreThanOrEquals;
  static dynamic _arg$moreThanOrEquals<T>(f) => f<T>();
  static const Field<VariableCondition, dynamic> _f$moreThanOrEquals = Field(
      'moreThanOrEquals', _$moreThanOrEquals,
      opt: true, arg: _arg$moreThanOrEquals);
  static dynamic? _$lessThanOrEquals(VariableCondition v) => v.lessThanOrEquals;
  static dynamic _arg$lessThanOrEquals<T>(f) => f<T>();
  static const Field<VariableCondition, dynamic> _f$lessThanOrEquals = Field(
      'lessThanOrEquals', _$lessThanOrEquals,
      opt: true, arg: _arg$lessThanOrEquals);

  @override
  final MappableFields<VariableCondition> fields = const {
    #variableName: _f$variableName,
    #equals: _f$equals,
    #notEquals: _f$notEquals,
    #moreThan: _f$moreThan,
    #lessThan: _f$lessThan,
    #moreThanOrEquals: _f$moreThanOrEquals,
    #lessThanOrEquals: _f$lessThanOrEquals,
  };
  @override
  final bool ignoreNull = true;

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'variable';
  @override
  late final ClassMapperBase superMapper = ConditionMapper.ensureInitialized();

  @override
  DecodingContext inherit(DecodingContext context) {
    return context.inherit(args: () => [dynamic]);
  }

  static VariableCondition<T> _instantiate<T>(DecodingData data) {
    return VariableCondition(data.dec(_f$variableName),
        equals: data.dec(_f$equals),
        notEquals: data.dec(_f$notEquals),
        moreThan: data.dec(_f$moreThan),
        lessThan: data.dec(_f$lessThan),
        moreThanOrEquals: data.dec(_f$moreThanOrEquals),
        lessThanOrEquals: data.dec(_f$lessThanOrEquals));
  }

  @override
  final Function instantiate = _instantiate;

  static VariableCondition<T> fromMap<T>(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<VariableCondition<T>>(map);
  }

  static VariableCondition<T> fromJson<T>(String json) {
    return ensureInitialized().decodeJson<VariableCondition<T>>(json);
  }
}

mixin VariableConditionMappable<T> {
  String toJson() {
    return VariableConditionMapper.ensureInitialized()
        .encodeJson<VariableCondition<T>>(this as VariableCondition<T>);
  }

  Map<String, dynamic> toMap() {
    return VariableConditionMapper.ensureInitialized()
        .encodeMap<VariableCondition<T>>(this as VariableCondition<T>);
  }

  VariableConditionCopyWith<VariableCondition<T>, VariableCondition<T>,
          VariableCondition<T>, T>
      get copyWith => _VariableConditionCopyWithImpl(
          this as VariableCondition<T>, $identity, $identity);
  @override
  String toString() {
    return VariableConditionMapper.ensureInitialized()
        .stringifyValue(this as VariableCondition<T>);
  }

  @override
  bool operator ==(Object other) {
    return VariableConditionMapper.ensureInitialized()
        .equalsValue(this as VariableCondition<T>, other);
  }

  @override
  int get hashCode {
    return VariableConditionMapper.ensureInitialized()
        .hashValue(this as VariableCondition<T>);
  }
}

extension VariableConditionValueCopy<$R, $Out, T>
    on ObjectCopyWith<$R, VariableCondition<T>, $Out> {
  VariableConditionCopyWith<$R, VariableCondition<T>, $Out, T>
      get $asVariableCondition =>
          $base.as((v, t, t2) => _VariableConditionCopyWithImpl(v, t, t2));
}

abstract class VariableConditionCopyWith<$R, $In extends VariableCondition<T>,
    $Out, T> implements ConditionCopyWith<$R, $In, $Out> {
  @override
  $R call(
      {String? variableName,
      T? equals,
      T? notEquals,
      T? moreThan,
      T? lessThan,
      T? moreThanOrEquals,
      T? lessThanOrEquals});
  VariableConditionCopyWith<$R2, $In, $Out2, T> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _VariableConditionCopyWithImpl<$R, $Out, T>
    extends ClassCopyWithBase<$R, VariableCondition<T>, $Out>
    implements VariableConditionCopyWith<$R, VariableCondition<T>, $Out, T> {
  _VariableConditionCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<VariableCondition> $mapper =
      VariableConditionMapper.ensureInitialized();
  @override
  $R call(
          {String? variableName,
          Object? equals = $none,
          Object? notEquals = $none,
          Object? moreThan = $none,
          Object? lessThan = $none,
          Object? moreThanOrEquals = $none,
          Object? lessThanOrEquals = $none}) =>
      $apply(FieldCopyWithData({
        if (variableName != null) #variableName: variableName,
        if (equals != $none) #equals: equals,
        if (notEquals != $none) #notEquals: notEquals,
        if (moreThan != $none) #moreThan: moreThan,
        if (lessThan != $none) #lessThan: lessThan,
        if (moreThanOrEquals != $none) #moreThanOrEquals: moreThanOrEquals,
        if (lessThanOrEquals != $none) #lessThanOrEquals: lessThanOrEquals
      }));
  @override
  VariableCondition<T> $make(CopyWithData data) =>
      VariableCondition(data.get(#variableName, or: $value.variableName),
          equals: data.get(#equals, or: $value.equals),
          notEquals: data.get(#notEquals, or: $value.notEquals),
          moreThan: data.get(#moreThan, or: $value.moreThan),
          lessThan: data.get(#lessThan, or: $value.lessThan),
          moreThanOrEquals:
              data.get(#moreThanOrEquals, or: $value.moreThanOrEquals),
          lessThanOrEquals:
              data.get(#lessThanOrEquals, or: $value.lessThanOrEquals));

  @override
  VariableConditionCopyWith<$R2, VariableCondition<T>, $Out2, T>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _VariableConditionCopyWithImpl($value, $cast, t);
}
