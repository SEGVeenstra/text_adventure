// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'and_condition.dart';

class AndConditionMapper extends SubClassMapperBase<AndCondition> {
  AndConditionMapper._();

  static AndConditionMapper? _instance;
  static AndConditionMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AndConditionMapper._());
      ConditionMapper.ensureInitialized().addSubMapper(_instance!);
      ConditionMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'AndCondition';

  static List<Condition> _$conditions(AndCondition v) => v.conditions;
  static const Field<AndCondition, List<Condition>> _f$conditions =
      Field('conditions', _$conditions);

  @override
  final MappableFields<AndCondition> fields = const {
    #conditions: _f$conditions,
  };
  @override
  final bool ignoreNull = true;

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'and';
  @override
  late final ClassMapperBase superMapper = ConditionMapper.ensureInitialized();

  static AndCondition _instantiate(DecodingData data) {
    return AndCondition(data.dec(_f$conditions));
  }

  @override
  final Function instantiate = _instantiate;

  static AndCondition fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<AndCondition>(map);
  }

  static AndCondition fromJson(String json) {
    return ensureInitialized().decodeJson<AndCondition>(json);
  }
}

mixin AndConditionMappable {
  String toJson() {
    return AndConditionMapper.ensureInitialized()
        .encodeJson<AndCondition>(this as AndCondition);
  }

  Map<String, dynamic> toMap() {
    return AndConditionMapper.ensureInitialized()
        .encodeMap<AndCondition>(this as AndCondition);
  }

  AndConditionCopyWith<AndCondition, AndCondition, AndCondition> get copyWith =>
      _AndConditionCopyWithImpl(this as AndCondition, $identity, $identity);
  @override
  String toString() {
    return AndConditionMapper.ensureInitialized()
        .stringifyValue(this as AndCondition);
  }

  @override
  bool operator ==(Object other) {
    return AndConditionMapper.ensureInitialized()
        .equalsValue(this as AndCondition, other);
  }

  @override
  int get hashCode {
    return AndConditionMapper.ensureInitialized()
        .hashValue(this as AndCondition);
  }
}

extension AndConditionValueCopy<$R, $Out>
    on ObjectCopyWith<$R, AndCondition, $Out> {
  AndConditionCopyWith<$R, AndCondition, $Out> get $asAndCondition =>
      $base.as((v, t, t2) => _AndConditionCopyWithImpl(v, t, t2));
}

abstract class AndConditionCopyWith<$R, $In extends AndCondition, $Out>
    implements ConditionCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, Condition, ConditionCopyWith<$R, Condition, Condition>>
      get conditions;
  @override
  $R call({List<Condition>? conditions});
  AndConditionCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _AndConditionCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, AndCondition, $Out>
    implements AndConditionCopyWith<$R, AndCondition, $Out> {
  _AndConditionCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<AndCondition> $mapper =
      AndConditionMapper.ensureInitialized();
  @override
  ListCopyWith<$R, Condition, ConditionCopyWith<$R, Condition, Condition>>
      get conditions => ListCopyWith($value.conditions,
          (v, t) => v.copyWith.$chain(t), (v) => call(conditions: v));
  @override
  $R call({List<Condition>? conditions}) => $apply(
      FieldCopyWithData({if (conditions != null) #conditions: conditions}));
  @override
  AndCondition $make(CopyWithData data) =>
      AndCondition(data.get(#conditions, or: $value.conditions));

  @override
  AndConditionCopyWith<$R2, AndCondition, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _AndConditionCopyWithImpl($value, $cast, t);
}
