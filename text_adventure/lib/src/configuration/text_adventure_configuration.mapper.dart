// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'text_adventure_configuration.dart';

class TextAdventureConfigurationMapper
    extends ClassMapperBase<TextAdventureConfiguration> {
  TextAdventureConfigurationMapper._();

  static TextAdventureConfigurationMapper? _instance;
  static TextAdventureConfigurationMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = TextAdventureConfigurationMapper._());
      LocationConfigurationMapper.ensureInitialized();
      InventoryItemMapper.ensureInitialized();
      VariableMapper.ensureInitialized();
      MetaConfigurationMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'TextAdventureConfiguration';

  static List<LocationConfiguration> _$locations(
          TextAdventureConfiguration v) =>
      v.locations;
  static const Field<TextAdventureConfiguration, List<LocationConfiguration>>
      _f$locations = Field('locations', _$locations);
  static List<InventoryItem> _$items(TextAdventureConfiguration v) => v.items;
  static const Field<TextAdventureConfiguration, List<InventoryItem>> _f$items =
      Field('items', _$items);
  static List<Variable<dynamic>> _$variables(TextAdventureConfiguration v) =>
      v.variables;
  static const Field<TextAdventureConfiguration, List<Variable<dynamic>>>
      _f$variables = Field('variables', _$variables);
  static MetaConfiguration _$meta(TextAdventureConfiguration v) => v.meta;
  static const Field<TextAdventureConfiguration, MetaConfiguration> _f$meta =
      Field('meta', _$meta);

  @override
  final MappableFields<TextAdventureConfiguration> fields = const {
    #locations: _f$locations,
    #items: _f$items,
    #variables: _f$variables,
    #meta: _f$meta,
  };
  @override
  final bool ignoreNull = true;

  static TextAdventureConfiguration _instantiate(DecodingData data) {
    return TextAdventureConfiguration(
        locations: data.dec(_f$locations),
        items: data.dec(_f$items),
        variables: data.dec(_f$variables),
        meta: data.dec(_f$meta));
  }

  @override
  final Function instantiate = _instantiate;

  static TextAdventureConfiguration fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<TextAdventureConfiguration>(map);
  }

  static TextAdventureConfiguration fromJson(String json) {
    return ensureInitialized().decodeJson<TextAdventureConfiguration>(json);
  }
}

mixin TextAdventureConfigurationMappable {
  String toJson() {
    return TextAdventureConfigurationMapper.ensureInitialized()
        .encodeJson<TextAdventureConfiguration>(
            this as TextAdventureConfiguration);
  }

  Map<String, dynamic> toMap() {
    return TextAdventureConfigurationMapper.ensureInitialized()
        .encodeMap<TextAdventureConfiguration>(
            this as TextAdventureConfiguration);
  }

  TextAdventureConfigurationCopyWith<TextAdventureConfiguration,
          TextAdventureConfiguration, TextAdventureConfiguration>
      get copyWith => _TextAdventureConfigurationCopyWithImpl(
          this as TextAdventureConfiguration, $identity, $identity);
  @override
  String toString() {
    return TextAdventureConfigurationMapper.ensureInitialized()
        .stringifyValue(this as TextAdventureConfiguration);
  }

  @override
  bool operator ==(Object other) {
    return TextAdventureConfigurationMapper.ensureInitialized()
        .equalsValue(this as TextAdventureConfiguration, other);
  }

  @override
  int get hashCode {
    return TextAdventureConfigurationMapper.ensureInitialized()
        .hashValue(this as TextAdventureConfiguration);
  }
}

extension TextAdventureConfigurationValueCopy<$R, $Out>
    on ObjectCopyWith<$R, TextAdventureConfiguration, $Out> {
  TextAdventureConfigurationCopyWith<$R, TextAdventureConfiguration, $Out>
      get $asTextAdventureConfiguration => $base
          .as((v, t, t2) => _TextAdventureConfigurationCopyWithImpl(v, t, t2));
}

abstract class TextAdventureConfigurationCopyWith<
    $R,
    $In extends TextAdventureConfiguration,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<
      $R,
      LocationConfiguration,
      LocationConfigurationCopyWith<$R, LocationConfiguration,
          LocationConfiguration>> get locations;
  ListCopyWith<$R, InventoryItem,
      InventoryItemCopyWith<$R, InventoryItem, InventoryItem>> get items;
  ListCopyWith<$R, Variable<dynamic>,
      ObjectCopyWith<$R, Variable<dynamic>, Variable<dynamic>>> get variables;
  MetaConfigurationCopyWith<$R, MetaConfiguration, MetaConfiguration> get meta;
  $R call(
      {List<LocationConfiguration>? locations,
      List<InventoryItem>? items,
      List<Variable<dynamic>>? variables,
      MetaConfiguration? meta});
  TextAdventureConfigurationCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _TextAdventureConfigurationCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, TextAdventureConfiguration, $Out>
    implements
        TextAdventureConfigurationCopyWith<$R, TextAdventureConfiguration,
            $Out> {
  _TextAdventureConfigurationCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TextAdventureConfiguration> $mapper =
      TextAdventureConfigurationMapper.ensureInitialized();
  @override
  ListCopyWith<
      $R,
      LocationConfiguration,
      LocationConfigurationCopyWith<$R, LocationConfiguration,
          LocationConfiguration>> get locations => ListCopyWith(
      $value.locations,
      (v, t) => v.copyWith.$chain(t),
      (v) => call(locations: v));
  @override
  ListCopyWith<$R, InventoryItem,
          InventoryItemCopyWith<$R, InventoryItem, InventoryItem>>
      get items => ListCopyWith(
          $value.items, (v, t) => v.copyWith.$chain(t), (v) => call(items: v));
  @override
  ListCopyWith<$R, Variable<dynamic>,
          ObjectCopyWith<$R, Variable<dynamic>, Variable<dynamic>>>
      get variables => ListCopyWith($value.variables,
          (v, t) => ObjectCopyWith(v, $identity, t), (v) => call(variables: v));
  @override
  MetaConfigurationCopyWith<$R, MetaConfiguration, MetaConfiguration>
      get meta => $value.meta.copyWith.$chain((v) => call(meta: v));
  @override
  $R call(
          {List<LocationConfiguration>? locations,
          List<InventoryItem>? items,
          List<Variable<dynamic>>? variables,
          MetaConfiguration? meta}) =>
      $apply(FieldCopyWithData({
        if (locations != null) #locations: locations,
        if (items != null) #items: items,
        if (variables != null) #variables: variables,
        if (meta != null) #meta: meta
      }));
  @override
  TextAdventureConfiguration $make(CopyWithData data) =>
      TextAdventureConfiguration(
          locations: data.get(#locations, or: $value.locations),
          items: data.get(#items, or: $value.items),
          variables: data.get(#variables, or: $value.variables),
          meta: data.get(#meta, or: $value.meta));

  @override
  TextAdventureConfigurationCopyWith<$R2, TextAdventureConfiguration, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _TextAdventureConfigurationCopyWithImpl($value, $cast, t);
}
