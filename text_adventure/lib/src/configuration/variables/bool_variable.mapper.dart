// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'bool_variable.dart';

class BoolVariableMapper extends SubClassMapperBase<BoolVariable> {
  BoolVariableMapper._();

  static BoolVariableMapper? _instance;
  static BoolVariableMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = BoolVariableMapper._());
      VariableMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'BoolVariable';

  static String _$id(BoolVariable v) => v.id;
  static const Field<BoolVariable, String> _f$id = Field('id', _$id);
  static bool _$initialValue(BoolVariable v) => v.initialValue;
  static const Field<BoolVariable, bool> _f$initialValue =
      Field('initialValue', _$initialValue, opt: true, def: false);

  @override
  final MappableFields<BoolVariable> fields = const {
    #id: _f$id,
    #initialValue: _f$initialValue,
  };
  @override
  final bool ignoreNull = true;

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'bool';
  @override
  late final ClassMapperBase superMapper = VariableMapper.ensureInitialized();

  @override
  DecodingContext inherit(DecodingContext context) {
    return context.inherit(args: () => []);
  }

  static BoolVariable _instantiate(DecodingData data) {
    return BoolVariable(
        id: data.dec(_f$id), initialValue: data.dec(_f$initialValue));
  }

  @override
  final Function instantiate = _instantiate;

  static BoolVariable fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<BoolVariable>(map);
  }

  static BoolVariable fromJson(String json) {
    return ensureInitialized().decodeJson<BoolVariable>(json);
  }
}

mixin BoolVariableMappable {
  String toJson() {
    return BoolVariableMapper.ensureInitialized()
        .encodeJson<BoolVariable>(this as BoolVariable);
  }

  Map<String, dynamic> toMap() {
    return BoolVariableMapper.ensureInitialized()
        .encodeMap<BoolVariable>(this as BoolVariable);
  }

  BoolVariableCopyWith<BoolVariable, BoolVariable, BoolVariable> get copyWith =>
      _BoolVariableCopyWithImpl(this as BoolVariable, $identity, $identity);
  @override
  String toString() {
    return BoolVariableMapper.ensureInitialized()
        .stringifyValue(this as BoolVariable);
  }

  @override
  bool operator ==(Object other) {
    return BoolVariableMapper.ensureInitialized()
        .equalsValue(this as BoolVariable, other);
  }

  @override
  int get hashCode {
    return BoolVariableMapper.ensureInitialized()
        .hashValue(this as BoolVariable);
  }
}

extension BoolVariableValueCopy<$R, $Out>
    on ObjectCopyWith<$R, BoolVariable, $Out> {
  BoolVariableCopyWith<$R, BoolVariable, $Out> get $asBoolVariable =>
      $base.as((v, t, t2) => _BoolVariableCopyWithImpl(v, t, t2));
}

abstract class BoolVariableCopyWith<$R, $In extends BoolVariable, $Out>
    implements VariableCopyWith<$R, $In, $Out, bool> {
  @override
  $R call({String? id, bool? initialValue});
  BoolVariableCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _BoolVariableCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, BoolVariable, $Out>
    implements BoolVariableCopyWith<$R, BoolVariable, $Out> {
  _BoolVariableCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<BoolVariable> $mapper =
      BoolVariableMapper.ensureInitialized();
  @override
  $R call({String? id, bool? initialValue}) => $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (initialValue != null) #initialValue: initialValue
      }));
  @override
  BoolVariable $make(CopyWithData data) => BoolVariable(
      id: data.get(#id, or: $value.id),
      initialValue: data.get(#initialValue, or: $value.initialValue));

  @override
  BoolVariableCopyWith<$R2, BoolVariable, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _BoolVariableCopyWithImpl($value, $cast, t);
}
