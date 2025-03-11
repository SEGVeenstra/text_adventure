// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'or_condition.dart';

class OrConditionMapper extends SubClassMapperBase<OrCondition> {
  OrConditionMapper._();

  static OrConditionMapper? _instance;
  static OrConditionMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = OrConditionMapper._());
      ConditionMapper.ensureInitialized().addSubMapper(_instance!);
      ConditionMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'OrCondition';

  static List<Condition> _$conditions(OrCondition v) => v.conditions;
  static const Field<OrCondition, List<Condition>> _f$conditions =
      Field('conditions', _$conditions);

  @override
  final MappableFields<OrCondition> fields = const {
    #conditions: _f$conditions,
  };
  @override
  final bool ignoreNull = true;

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'or';
  @override
  late final ClassMapperBase superMapper = ConditionMapper.ensureInitialized();

  static OrCondition _instantiate(DecodingData data) {
    return OrCondition(data.dec(_f$conditions));
  }

  @override
  final Function instantiate = _instantiate;

  static OrCondition fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<OrCondition>(map);
  }

  static OrCondition fromJson(String json) {
    return ensureInitialized().decodeJson<OrCondition>(json);
  }
}

mixin OrConditionMappable {
  String toJson() {
    return OrConditionMapper.ensureInitialized()
        .encodeJson<OrCondition>(this as OrCondition);
  }

  Map<String, dynamic> toMap() {
    return OrConditionMapper.ensureInitialized()
        .encodeMap<OrCondition>(this as OrCondition);
  }

  OrConditionCopyWith<OrCondition, OrCondition, OrCondition> get copyWith =>
      _OrConditionCopyWithImpl(this as OrCondition, $identity, $identity);
  @override
  String toString() {
    return OrConditionMapper.ensureInitialized()
        .stringifyValue(this as OrCondition);
  }

  @override
  bool operator ==(Object other) {
    return OrConditionMapper.ensureInitialized()
        .equalsValue(this as OrCondition, other);
  }

  @override
  int get hashCode {
    return OrConditionMapper.ensureInitialized().hashValue(this as OrCondition);
  }
}

extension OrConditionValueCopy<$R, $Out>
    on ObjectCopyWith<$R, OrCondition, $Out> {
  OrConditionCopyWith<$R, OrCondition, $Out> get $asOrCondition =>
      $base.as((v, t, t2) => _OrConditionCopyWithImpl(v, t, t2));
}

abstract class OrConditionCopyWith<$R, $In extends OrCondition, $Out>
    implements ConditionCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, Condition, ConditionCopyWith<$R, Condition, Condition>>
      get conditions;
  @override
  $R call({List<Condition>? conditions});
  OrConditionCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _OrConditionCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, OrCondition, $Out>
    implements OrConditionCopyWith<$R, OrCondition, $Out> {
  _OrConditionCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<OrCondition> $mapper =
      OrConditionMapper.ensureInitialized();
  @override
  ListCopyWith<$R, Condition, ConditionCopyWith<$R, Condition, Condition>>
      get conditions => ListCopyWith($value.conditions,
          (v, t) => v.copyWith.$chain(t), (v) => call(conditions: v));
  @override
  $R call({List<Condition>? conditions}) => $apply(
      FieldCopyWithData({if (conditions != null) #conditions: conditions}));
  @override
  OrCondition $make(CopyWithData data) =>
      OrCondition(data.get(#conditions, or: $value.conditions));

  @override
  OrConditionCopyWith<$R2, OrCondition, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _OrConditionCopyWithImpl($value, $cast, t);
}
