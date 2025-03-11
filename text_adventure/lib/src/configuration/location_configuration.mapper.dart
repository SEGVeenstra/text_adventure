// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'location_configuration.dart';

class LocationConfigurationMapper
    extends ClassMapperBase<LocationConfiguration> {
  LocationConfigurationMapper._();

  static LocationConfigurationMapper? _instance;
  static LocationConfigurationMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = LocationConfigurationMapper._());
      DescriptionConfigurationMapper.ensureInitialized();
      ActionConfigurationMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'LocationConfiguration';

  static String _$id(LocationConfiguration v) => v.id;
  static const Field<LocationConfiguration, String> _f$id = Field('id', _$id);
  static String _$name(LocationConfiguration v) => v.name;
  static const Field<LocationConfiguration, String> _f$name =
      Field('name', _$name);
  static List<DescriptionConfiguration> _$description(
          LocationConfiguration v) =>
      v.description;
  static const Field<LocationConfiguration, List<DescriptionConfiguration>>
      _f$description = Field('description', _$description);
  static List<ActionConfiguration> _$actions(LocationConfiguration v) =>
      v.actions;
  static const Field<LocationConfiguration, List<ActionConfiguration>>
      _f$actions = Field('actions', _$actions);

  @override
  final MappableFields<LocationConfiguration> fields = const {
    #id: _f$id,
    #name: _f$name,
    #description: _f$description,
    #actions: _f$actions,
  };
  @override
  final bool ignoreNull = true;

  static LocationConfiguration _instantiate(DecodingData data) {
    return LocationConfiguration(
        id: data.dec(_f$id),
        name: data.dec(_f$name),
        description: data.dec(_f$description),
        actions: data.dec(_f$actions));
  }

  @override
  final Function instantiate = _instantiate;

  static LocationConfiguration fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<LocationConfiguration>(map);
  }

  static LocationConfiguration fromJson(String json) {
    return ensureInitialized().decodeJson<LocationConfiguration>(json);
  }
}

mixin LocationConfigurationMappable {
  String toJson() {
    return LocationConfigurationMapper.ensureInitialized()
        .encodeJson<LocationConfiguration>(this as LocationConfiguration);
  }

  Map<String, dynamic> toMap() {
    return LocationConfigurationMapper.ensureInitialized()
        .encodeMap<LocationConfiguration>(this as LocationConfiguration);
  }

  LocationConfigurationCopyWith<LocationConfiguration, LocationConfiguration,
          LocationConfiguration>
      get copyWith => _LocationConfigurationCopyWithImpl(
          this as LocationConfiguration, $identity, $identity);
  @override
  String toString() {
    return LocationConfigurationMapper.ensureInitialized()
        .stringifyValue(this as LocationConfiguration);
  }

  @override
  bool operator ==(Object other) {
    return LocationConfigurationMapper.ensureInitialized()
        .equalsValue(this as LocationConfiguration, other);
  }

  @override
  int get hashCode {
    return LocationConfigurationMapper.ensureInitialized()
        .hashValue(this as LocationConfiguration);
  }
}

extension LocationConfigurationValueCopy<$R, $Out>
    on ObjectCopyWith<$R, LocationConfiguration, $Out> {
  LocationConfigurationCopyWith<$R, LocationConfiguration, $Out>
      get $asLocationConfiguration =>
          $base.as((v, t, t2) => _LocationConfigurationCopyWithImpl(v, t, t2));
}

abstract class LocationConfigurationCopyWith<
    $R,
    $In extends LocationConfiguration,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<
      $R,
      DescriptionConfiguration,
      DescriptionConfigurationCopyWith<$R, DescriptionConfiguration,
          DescriptionConfiguration>> get description;
  ListCopyWith<
      $R,
      ActionConfiguration,
      ActionConfigurationCopyWith<$R, ActionConfiguration,
          ActionConfiguration>> get actions;
  $R call(
      {String? id,
      String? name,
      List<DescriptionConfiguration>? description,
      List<ActionConfiguration>? actions});
  LocationConfigurationCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _LocationConfigurationCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, LocationConfiguration, $Out>
    implements LocationConfigurationCopyWith<$R, LocationConfiguration, $Out> {
  _LocationConfigurationCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<LocationConfiguration> $mapper =
      LocationConfigurationMapper.ensureInitialized();
  @override
  ListCopyWith<
      $R,
      DescriptionConfiguration,
      DescriptionConfigurationCopyWith<$R, DescriptionConfiguration,
          DescriptionConfiguration>> get description => ListCopyWith(
      $value.description,
      (v, t) => v.copyWith.$chain(t),
      (v) => call(description: v));
  @override
  ListCopyWith<
      $R,
      ActionConfiguration,
      ActionConfigurationCopyWith<$R, ActionConfiguration,
          ActionConfiguration>> get actions => ListCopyWith(
      $value.actions, (v, t) => v.copyWith.$chain(t), (v) => call(actions: v));
  @override
  $R call(
          {String? id,
          String? name,
          List<DescriptionConfiguration>? description,
          List<ActionConfiguration>? actions}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (name != null) #name: name,
        if (description != null) #description: description,
        if (actions != null) #actions: actions
      }));
  @override
  LocationConfiguration $make(CopyWithData data) => LocationConfiguration(
      id: data.get(#id, or: $value.id),
      name: data.get(#name, or: $value.name),
      description: data.get(#description, or: $value.description),
      actions: data.get(#actions, or: $value.actions));

  @override
  LocationConfigurationCopyWith<$R2, LocationConfiguration, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _LocationConfigurationCopyWithImpl($value, $cast, t);
}
