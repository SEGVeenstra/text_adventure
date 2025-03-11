// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'meta_configuration.dart';

class MetaConfigurationMapper extends ClassMapperBase<MetaConfiguration> {
  MetaConfigurationMapper._();

  static MetaConfigurationMapper? _instance;
  static MetaConfigurationMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MetaConfigurationMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'MetaConfiguration';

  static String _$title(MetaConfiguration v) => v.title;
  static const Field<MetaConfiguration, String> _f$title =
      Field('title', _$title);
  static String? _$author(MetaConfiguration v) => v.author;
  static const Field<MetaConfiguration, String> _f$author =
      Field('author', _$author, opt: true);
  static String? _$description(MetaConfiguration v) => v.description;
  static const Field<MetaConfiguration, String> _f$description =
      Field('description', _$description, opt: true);
  static int _$version(MetaConfiguration v) => v.version;
  static const Field<MetaConfiguration, int> _f$version =
      Field('version', _$version);

  @override
  final MappableFields<MetaConfiguration> fields = const {
    #title: _f$title,
    #author: _f$author,
    #description: _f$description,
    #version: _f$version,
  };
  @override
  final bool ignoreNull = true;

  static MetaConfiguration _instantiate(DecodingData data) {
    return MetaConfiguration(
        title: data.dec(_f$title),
        author: data.dec(_f$author),
        description: data.dec(_f$description),
        version: data.dec(_f$version));
  }

  @override
  final Function instantiate = _instantiate;

  static MetaConfiguration fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MetaConfiguration>(map);
  }

  static MetaConfiguration fromJson(String json) {
    return ensureInitialized().decodeJson<MetaConfiguration>(json);
  }
}

mixin MetaConfigurationMappable {
  String toJson() {
    return MetaConfigurationMapper.ensureInitialized()
        .encodeJson<MetaConfiguration>(this as MetaConfiguration);
  }

  Map<String, dynamic> toMap() {
    return MetaConfigurationMapper.ensureInitialized()
        .encodeMap<MetaConfiguration>(this as MetaConfiguration);
  }

  MetaConfigurationCopyWith<MetaConfiguration, MetaConfiguration,
          MetaConfiguration>
      get copyWith => _MetaConfigurationCopyWithImpl(
          this as MetaConfiguration, $identity, $identity);
  @override
  String toString() {
    return MetaConfigurationMapper.ensureInitialized()
        .stringifyValue(this as MetaConfiguration);
  }

  @override
  bool operator ==(Object other) {
    return MetaConfigurationMapper.ensureInitialized()
        .equalsValue(this as MetaConfiguration, other);
  }

  @override
  int get hashCode {
    return MetaConfigurationMapper.ensureInitialized()
        .hashValue(this as MetaConfiguration);
  }
}

extension MetaConfigurationValueCopy<$R, $Out>
    on ObjectCopyWith<$R, MetaConfiguration, $Out> {
  MetaConfigurationCopyWith<$R, MetaConfiguration, $Out>
      get $asMetaConfiguration =>
          $base.as((v, t, t2) => _MetaConfigurationCopyWithImpl(v, t, t2));
}

abstract class MetaConfigurationCopyWith<$R, $In extends MetaConfiguration,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? title, String? author, String? description, int? version});
  MetaConfigurationCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _MetaConfigurationCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MetaConfiguration, $Out>
    implements MetaConfigurationCopyWith<$R, MetaConfiguration, $Out> {
  _MetaConfigurationCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MetaConfiguration> $mapper =
      MetaConfigurationMapper.ensureInitialized();
  @override
  $R call(
          {String? title,
          Object? author = $none,
          Object? description = $none,
          int? version}) =>
      $apply(FieldCopyWithData({
        if (title != null) #title: title,
        if (author != $none) #author: author,
        if (description != $none) #description: description,
        if (version != null) #version: version
      }));
  @override
  MetaConfiguration $make(CopyWithData data) => MetaConfiguration(
      title: data.get(#title, or: $value.title),
      author: data.get(#author, or: $value.author),
      description: data.get(#description, or: $value.description),
      version: data.get(#version, or: $value.version));

  @override
  MetaConfigurationCopyWith<$R2, MetaConfiguration, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _MetaConfigurationCopyWithImpl($value, $cast, t);
}
