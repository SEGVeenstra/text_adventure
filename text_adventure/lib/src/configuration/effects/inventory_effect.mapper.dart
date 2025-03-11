// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'inventory_effect.dart';

class InventoryEffectMapper extends SubClassMapperBase<InventoryEffect> {
  InventoryEffectMapper._();

  static InventoryEffectMapper? _instance;
  static InventoryEffectMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = InventoryEffectMapper._());
      EffectMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'InventoryEffect';

  static String _$itemId(InventoryEffect v) => v.itemId;
  static const Field<InventoryEffect, String> _f$itemId =
      Field('itemId', _$itemId);
  static int? _$add(InventoryEffect v) => v.add;
  static const Field<InventoryEffect, int> _f$add =
      Field('add', _$add, opt: true);
  static int? _$set(InventoryEffect v) => v.set;
  static const Field<InventoryEffect, int> _f$set =
      Field('set', _$set, opt: true);
  static int? _$remove(InventoryEffect v) => v.remove;
  static const Field<InventoryEffect, int> _f$remove =
      Field('remove', _$remove, opt: true);

  @override
  final MappableFields<InventoryEffect> fields = const {
    #itemId: _f$itemId,
    #add: _f$add,
    #set: _f$set,
    #remove: _f$remove,
  };
  @override
  final bool ignoreNull = true;

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'inventory';
  @override
  late final ClassMapperBase superMapper = EffectMapper.ensureInitialized();

  static InventoryEffect _instantiate(DecodingData data) {
    return InventoryEffect(data.dec(_f$itemId),
        add: data.dec(_f$add),
        set: data.dec(_f$set),
        remove: data.dec(_f$remove));
  }

  @override
  final Function instantiate = _instantiate;

  static InventoryEffect fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<InventoryEffect>(map);
  }

  static InventoryEffect fromJson(String json) {
    return ensureInitialized().decodeJson<InventoryEffect>(json);
  }
}

mixin InventoryEffectMappable {
  String toJson() {
    return InventoryEffectMapper.ensureInitialized()
        .encodeJson<InventoryEffect>(this as InventoryEffect);
  }

  Map<String, dynamic> toMap() {
    return InventoryEffectMapper.ensureInitialized()
        .encodeMap<InventoryEffect>(this as InventoryEffect);
  }

  InventoryEffectCopyWith<InventoryEffect, InventoryEffect, InventoryEffect>
      get copyWith => _InventoryEffectCopyWithImpl(
          this as InventoryEffect, $identity, $identity);
  @override
  String toString() {
    return InventoryEffectMapper.ensureInitialized()
        .stringifyValue(this as InventoryEffect);
  }

  @override
  bool operator ==(Object other) {
    return InventoryEffectMapper.ensureInitialized()
        .equalsValue(this as InventoryEffect, other);
  }

  @override
  int get hashCode {
    return InventoryEffectMapper.ensureInitialized()
        .hashValue(this as InventoryEffect);
  }
}

extension InventoryEffectValueCopy<$R, $Out>
    on ObjectCopyWith<$R, InventoryEffect, $Out> {
  InventoryEffectCopyWith<$R, InventoryEffect, $Out> get $asInventoryEffect =>
      $base.as((v, t, t2) => _InventoryEffectCopyWithImpl(v, t, t2));
}

abstract class InventoryEffectCopyWith<$R, $In extends InventoryEffect, $Out>
    implements EffectCopyWith<$R, $In, $Out> {
  @override
  $R call({String? itemId, int? add, int? set, int? remove});
  InventoryEffectCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _InventoryEffectCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, InventoryEffect, $Out>
    implements InventoryEffectCopyWith<$R, InventoryEffect, $Out> {
  _InventoryEffectCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<InventoryEffect> $mapper =
      InventoryEffectMapper.ensureInitialized();
  @override
  $R call(
          {String? itemId,
          Object? add = $none,
          Object? set = $none,
          Object? remove = $none}) =>
      $apply(FieldCopyWithData({
        if (itemId != null) #itemId: itemId,
        if (add != $none) #add: add,
        if (set != $none) #set: set,
        if (remove != $none) #remove: remove
      }));
  @override
  InventoryEffect $make(CopyWithData data) =>
      InventoryEffect(data.get(#itemId, or: $value.itemId),
          add: data.get(#add, or: $value.add),
          set: data.get(#set, or: $value.set),
          remove: data.get(#remove, or: $value.remove));

  @override
  InventoryEffectCopyWith<$R2, InventoryEffect, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _InventoryEffectCopyWithImpl($value, $cast, t);
}
