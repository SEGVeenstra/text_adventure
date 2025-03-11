// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'inventory_item.dart';

class InventoryItemMapper extends ClassMapperBase<InventoryItem> {
  InventoryItemMapper._();

  static InventoryItemMapper? _instance;
  static InventoryItemMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = InventoryItemMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'InventoryItem';

  static String _$id(InventoryItem v) => v.id;
  static const Field<InventoryItem, String> _f$id = Field('id', _$id);
  static String _$name(InventoryItem v) => v.name;
  static const Field<InventoryItem, String> _f$name = Field('name', _$name);
  static String _$description(InventoryItem v) => v.description;
  static const Field<InventoryItem, String> _f$description =
      Field('description', _$description);

  @override
  final MappableFields<InventoryItem> fields = const {
    #id: _f$id,
    #name: _f$name,
    #description: _f$description,
  };
  @override
  final bool ignoreNull = true;

  static InventoryItem _instantiate(DecodingData data) {
    return InventoryItem(
        id: data.dec(_f$id),
        name: data.dec(_f$name),
        description: data.dec(_f$description));
  }

  @override
  final Function instantiate = _instantiate;

  static InventoryItem fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<InventoryItem>(map);
  }

  static InventoryItem fromJson(String json) {
    return ensureInitialized().decodeJson<InventoryItem>(json);
  }
}

mixin InventoryItemMappable {
  String toJson() {
    return InventoryItemMapper.ensureInitialized()
        .encodeJson<InventoryItem>(this as InventoryItem);
  }

  Map<String, dynamic> toMap() {
    return InventoryItemMapper.ensureInitialized()
        .encodeMap<InventoryItem>(this as InventoryItem);
  }

  InventoryItemCopyWith<InventoryItem, InventoryItem, InventoryItem>
      get copyWith => _InventoryItemCopyWithImpl(
          this as InventoryItem, $identity, $identity);
  @override
  String toString() {
    return InventoryItemMapper.ensureInitialized()
        .stringifyValue(this as InventoryItem);
  }

  @override
  bool operator ==(Object other) {
    return InventoryItemMapper.ensureInitialized()
        .equalsValue(this as InventoryItem, other);
  }

  @override
  int get hashCode {
    return InventoryItemMapper.ensureInitialized()
        .hashValue(this as InventoryItem);
  }
}

extension InventoryItemValueCopy<$R, $Out>
    on ObjectCopyWith<$R, InventoryItem, $Out> {
  InventoryItemCopyWith<$R, InventoryItem, $Out> get $asInventoryItem =>
      $base.as((v, t, t2) => _InventoryItemCopyWithImpl(v, t, t2));
}

abstract class InventoryItemCopyWith<$R, $In extends InventoryItem, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? id, String? name, String? description});
  InventoryItemCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _InventoryItemCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, InventoryItem, $Out>
    implements InventoryItemCopyWith<$R, InventoryItem, $Out> {
  _InventoryItemCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<InventoryItem> $mapper =
      InventoryItemMapper.ensureInitialized();
  @override
  $R call({String? id, String? name, String? description}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (name != null) #name: name,
        if (description != null) #description: description
      }));
  @override
  InventoryItem $make(CopyWithData data) => InventoryItem(
      id: data.get(#id, or: $value.id),
      name: data.get(#name, or: $value.name),
      description: data.get(#description, or: $value.description));

  @override
  InventoryItemCopyWith<$R2, InventoryItem, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _InventoryItemCopyWithImpl($value, $cast, t);
}
