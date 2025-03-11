// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'inventory_condition.dart';

class InventoryConditionMapper extends SubClassMapperBase<InventoryCondition> {
  InventoryConditionMapper._();

  static InventoryConditionMapper? _instance;
  static InventoryConditionMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = InventoryConditionMapper._());
      ConditionMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'InventoryCondition';

  static String _$itemId(InventoryCondition v) => v.itemId;
  static const Field<InventoryCondition, String> _f$itemId =
      Field('itemId', _$itemId);
  static int? _$equals(InventoryCondition v) => v.equals;
  static const Field<InventoryCondition, int> _f$equals =
      Field('equals', _$equals, opt: true);
  static int? _$notEquals(InventoryCondition v) => v.notEquals;
  static const Field<InventoryCondition, int> _f$notEquals =
      Field('notEquals', _$notEquals, opt: true);
  static int? _$moreThan(InventoryCondition v) => v.moreThan;
  static const Field<InventoryCondition, int> _f$moreThan =
      Field('moreThan', _$moreThan, opt: true);
  static int? _$lessThan(InventoryCondition v) => v.lessThan;
  static const Field<InventoryCondition, int> _f$lessThan =
      Field('lessThan', _$lessThan, opt: true);
  static int? _$moreThanOrEquals(InventoryCondition v) => v.moreThanOrEquals;
  static const Field<InventoryCondition, int> _f$moreThanOrEquals =
      Field('moreThanOrEquals', _$moreThanOrEquals, opt: true);
  static int? _$lessThanOrEquals(InventoryCondition v) => v.lessThanOrEquals;
  static const Field<InventoryCondition, int> _f$lessThanOrEquals =
      Field('lessThanOrEquals', _$lessThanOrEquals, opt: true);

  @override
  final MappableFields<InventoryCondition> fields = const {
    #itemId: _f$itemId,
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
  final dynamic discriminatorValue = 'inventory';
  @override
  late final ClassMapperBase superMapper = ConditionMapper.ensureInitialized();

  static InventoryCondition _instantiate(DecodingData data) {
    return InventoryCondition(data.dec(_f$itemId),
        equals: data.dec(_f$equals),
        notEquals: data.dec(_f$notEquals),
        moreThan: data.dec(_f$moreThan),
        lessThan: data.dec(_f$lessThan),
        moreThanOrEquals: data.dec(_f$moreThanOrEquals),
        lessThanOrEquals: data.dec(_f$lessThanOrEquals));
  }

  @override
  final Function instantiate = _instantiate;

  static InventoryCondition fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<InventoryCondition>(map);
  }

  static InventoryCondition fromJson(String json) {
    return ensureInitialized().decodeJson<InventoryCondition>(json);
  }
}

mixin InventoryConditionMappable {
  String toJson() {
    return InventoryConditionMapper.ensureInitialized()
        .encodeJson<InventoryCondition>(this as InventoryCondition);
  }

  Map<String, dynamic> toMap() {
    return InventoryConditionMapper.ensureInitialized()
        .encodeMap<InventoryCondition>(this as InventoryCondition);
  }

  InventoryConditionCopyWith<InventoryCondition, InventoryCondition,
          InventoryCondition>
      get copyWith => _InventoryConditionCopyWithImpl(
          this as InventoryCondition, $identity, $identity);
  @override
  String toString() {
    return InventoryConditionMapper.ensureInitialized()
        .stringifyValue(this as InventoryCondition);
  }

  @override
  bool operator ==(Object other) {
    return InventoryConditionMapper.ensureInitialized()
        .equalsValue(this as InventoryCondition, other);
  }

  @override
  int get hashCode {
    return InventoryConditionMapper.ensureInitialized()
        .hashValue(this as InventoryCondition);
  }
}

extension InventoryConditionValueCopy<$R, $Out>
    on ObjectCopyWith<$R, InventoryCondition, $Out> {
  InventoryConditionCopyWith<$R, InventoryCondition, $Out>
      get $asInventoryCondition =>
          $base.as((v, t, t2) => _InventoryConditionCopyWithImpl(v, t, t2));
}

abstract class InventoryConditionCopyWith<$R, $In extends InventoryCondition,
    $Out> implements ConditionCopyWith<$R, $In, $Out> {
  @override
  $R call(
      {String? itemId,
      int? equals,
      int? notEquals,
      int? moreThan,
      int? lessThan,
      int? moreThanOrEquals,
      int? lessThanOrEquals});
  InventoryConditionCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _InventoryConditionCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, InventoryCondition, $Out>
    implements InventoryConditionCopyWith<$R, InventoryCondition, $Out> {
  _InventoryConditionCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<InventoryCondition> $mapper =
      InventoryConditionMapper.ensureInitialized();
  @override
  $R call(
          {String? itemId,
          Object? equals = $none,
          Object? notEquals = $none,
          Object? moreThan = $none,
          Object? lessThan = $none,
          Object? moreThanOrEquals = $none,
          Object? lessThanOrEquals = $none}) =>
      $apply(FieldCopyWithData({
        if (itemId != null) #itemId: itemId,
        if (equals != $none) #equals: equals,
        if (notEquals != $none) #notEquals: notEquals,
        if (moreThan != $none) #moreThan: moreThan,
        if (lessThan != $none) #lessThan: lessThan,
        if (moreThanOrEquals != $none) #moreThanOrEquals: moreThanOrEquals,
        if (lessThanOrEquals != $none) #lessThanOrEquals: lessThanOrEquals
      }));
  @override
  InventoryCondition $make(CopyWithData data) =>
      InventoryCondition(data.get(#itemId, or: $value.itemId),
          equals: data.get(#equals, or: $value.equals),
          notEquals: data.get(#notEquals, or: $value.notEquals),
          moreThan: data.get(#moreThan, or: $value.moreThan),
          lessThan: data.get(#lessThan, or: $value.lessThan),
          moreThanOrEquals:
              data.get(#moreThanOrEquals, or: $value.moreThanOrEquals),
          lessThanOrEquals:
              data.get(#lessThanOrEquals, or: $value.lessThanOrEquals));

  @override
  InventoryConditionCopyWith<$R2, InventoryCondition, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _InventoryConditionCopyWithImpl($value, $cast, t);
}
