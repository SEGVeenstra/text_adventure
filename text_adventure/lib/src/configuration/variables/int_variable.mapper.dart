// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'int_variable.dart';

class IntVariableMapper extends SubClassMapperBase<IntVariable> {
  IntVariableMapper._();

  static IntVariableMapper? _instance;
  static IntVariableMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = IntVariableMapper._());
      VariableMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'IntVariable';

  static String _$id(IntVariable v) => v.id;
  static const Field<IntVariable, String> _f$id = Field('id', _$id);
  static int _$initialValue(IntVariable v) => v.initialValue;
  static const Field<IntVariable, int> _f$initialValue =
      Field('initialValue', _$initialValue, opt: true, def: 0);

  @override
  final MappableFields<IntVariable> fields = const {
    #id: _f$id,
    #initialValue: _f$initialValue,
  };
  @override
  final bool ignoreNull = true;

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'int';
  @override
  late final ClassMapperBase superMapper = VariableMapper.ensureInitialized();

  @override
  DecodingContext inherit(DecodingContext context) {
    return context.inherit(args: () => []);
  }

  static IntVariable _instantiate(DecodingData data) {
    return IntVariable(
        id: data.dec(_f$id), initialValue: data.dec(_f$initialValue));
  }

  @override
  final Function instantiate = _instantiate;

  static IntVariable fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<IntVariable>(map);
  }

  static IntVariable fromJson(String json) {
    return ensureInitialized().decodeJson<IntVariable>(json);
  }
}

mixin IntVariableMappable {
  String toJson() {
    return IntVariableMapper.ensureInitialized()
        .encodeJson<IntVariable>(this as IntVariable);
  }

  Map<String, dynamic> toMap() {
    return IntVariableMapper.ensureInitialized()
        .encodeMap<IntVariable>(this as IntVariable);
  }

  IntVariableCopyWith<IntVariable, IntVariable, IntVariable> get copyWith =>
      _IntVariableCopyWithImpl(this as IntVariable, $identity, $identity);
  @override
  String toString() {
    return IntVariableMapper.ensureInitialized()
        .stringifyValue(this as IntVariable);
  }

  @override
  bool operator ==(Object other) {
    return IntVariableMapper.ensureInitialized()
        .equalsValue(this as IntVariable, other);
  }

  @override
  int get hashCode {
    return IntVariableMapper.ensureInitialized().hashValue(this as IntVariable);
  }
}

extension IntVariableValueCopy<$R, $Out>
    on ObjectCopyWith<$R, IntVariable, $Out> {
  IntVariableCopyWith<$R, IntVariable, $Out> get $asIntVariable =>
      $base.as((v, t, t2) => _IntVariableCopyWithImpl(v, t, t2));
}

abstract class IntVariableCopyWith<$R, $In extends IntVariable, $Out>
    implements VariableCopyWith<$R, $In, $Out, int> {
  @override
  $R call({String? id, int? initialValue});
  IntVariableCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _IntVariableCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, IntVariable, $Out>
    implements IntVariableCopyWith<$R, IntVariable, $Out> {
  _IntVariableCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<IntVariable> $mapper =
      IntVariableMapper.ensureInitialized();
  @override
  $R call({String? id, int? initialValue}) => $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (initialValue != null) #initialValue: initialValue
      }));
  @override
  IntVariable $make(CopyWithData data) => IntVariable(
      id: data.get(#id, or: $value.id),
      initialValue: data.get(#initialValue, or: $value.initialValue));

  @override
  IntVariableCopyWith<$R2, IntVariable, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _IntVariableCopyWithImpl($value, $cast, t);
}
