// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'variable_effect.dart';

class VariableEffectMapper extends SubClassMapperBase<VariableEffect> {
  VariableEffectMapper._();

  static VariableEffectMapper? _instance;
  static VariableEffectMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = VariableEffectMapper._());
      EffectMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'VariableEffect';
  @override
  Function get typeFactory => <T>(f) => f<VariableEffect<T>>();

  static String _$variableName(VariableEffect v) => v.variableName;
  static const Field<VariableEffect, String> _f$variableName =
      Field('variableName', _$variableName);
  static dynamic? _$set(VariableEffect v) => v.set;
  static dynamic _arg$set<T>(f) => f<T>();
  static const Field<VariableEffect, dynamic> _f$set =
      Field('set', _$set, opt: true, arg: _arg$set);
  static dynamic? _$add(VariableEffect v) => v.add;
  static dynamic _arg$add<T>(f) => f<T>();
  static const Field<VariableEffect, dynamic> _f$add =
      Field('add', _$add, opt: true, arg: _arg$add);

  @override
  final MappableFields<VariableEffect> fields = const {
    #variableName: _f$variableName,
    #set: _f$set,
    #add: _f$add,
  };
  @override
  final bool ignoreNull = true;

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'variable';
  @override
  late final ClassMapperBase superMapper = EffectMapper.ensureInitialized();

  @override
  DecodingContext inherit(DecodingContext context) {
    return context.inherit(args: () => [dynamic]);
  }

  static VariableEffect<T> _instantiate<T>(DecodingData data) {
    return VariableEffect(data.dec(_f$variableName),
        set: data.dec(_f$set), add: data.dec(_f$add));
  }

  @override
  final Function instantiate = _instantiate;

  static VariableEffect<T> fromMap<T>(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<VariableEffect<T>>(map);
  }

  static VariableEffect<T> fromJson<T>(String json) {
    return ensureInitialized().decodeJson<VariableEffect<T>>(json);
  }
}

mixin VariableEffectMappable<T> {
  String toJson() {
    return VariableEffectMapper.ensureInitialized()
        .encodeJson<VariableEffect<T>>(this as VariableEffect<T>);
  }

  Map<String, dynamic> toMap() {
    return VariableEffectMapper.ensureInitialized()
        .encodeMap<VariableEffect<T>>(this as VariableEffect<T>);
  }

  VariableEffectCopyWith<VariableEffect<T>, VariableEffect<T>,
          VariableEffect<T>, T>
      get copyWith => _VariableEffectCopyWithImpl(
          this as VariableEffect<T>, $identity, $identity);
  @override
  String toString() {
    return VariableEffectMapper.ensureInitialized()
        .stringifyValue(this as VariableEffect<T>);
  }

  @override
  bool operator ==(Object other) {
    return VariableEffectMapper.ensureInitialized()
        .equalsValue(this as VariableEffect<T>, other);
  }

  @override
  int get hashCode {
    return VariableEffectMapper.ensureInitialized()
        .hashValue(this as VariableEffect<T>);
  }
}

extension VariableEffectValueCopy<$R, $Out, T>
    on ObjectCopyWith<$R, VariableEffect<T>, $Out> {
  VariableEffectCopyWith<$R, VariableEffect<T>, $Out, T>
      get $asVariableEffect =>
          $base.as((v, t, t2) => _VariableEffectCopyWithImpl(v, t, t2));
}

abstract class VariableEffectCopyWith<$R, $In extends VariableEffect<T>, $Out,
    T> implements EffectCopyWith<$R, $In, $Out> {
  @override
  $R call({String? variableName, T? set, T? add});
  VariableEffectCopyWith<$R2, $In, $Out2, T> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _VariableEffectCopyWithImpl<$R, $Out, T>
    extends ClassCopyWithBase<$R, VariableEffect<T>, $Out>
    implements VariableEffectCopyWith<$R, VariableEffect<T>, $Out, T> {
  _VariableEffectCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<VariableEffect> $mapper =
      VariableEffectMapper.ensureInitialized();
  @override
  $R call({String? variableName, Object? set = $none, Object? add = $none}) =>
      $apply(FieldCopyWithData({
        if (variableName != null) #variableName: variableName,
        if (set != $none) #set: set,
        if (add != $none) #add: add
      }));
  @override
  VariableEffect<T> $make(CopyWithData data) =>
      VariableEffect(data.get(#variableName, or: $value.variableName),
          set: data.get(#set, or: $value.set),
          add: data.get(#add, or: $value.add));

  @override
  VariableEffectCopyWith<$R2, VariableEffect<T>, $Out2, T> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _VariableEffectCopyWithImpl($value, $cast, t);
}
