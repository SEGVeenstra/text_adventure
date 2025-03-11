// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'description_configuration.dart';

class DescriptionConfigurationMapper
    extends ClassMapperBase<DescriptionConfiguration> {
  DescriptionConfigurationMapper._();

  static DescriptionConfigurationMapper? _instance;
  static DescriptionConfigurationMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = DescriptionConfigurationMapper._());
      ConditionMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'DescriptionConfiguration';

  static Condition? _$condition(DescriptionConfiguration v) => v.condition;
  static const Field<DescriptionConfiguration, Condition> _f$condition =
      Field('condition', _$condition, opt: true);
  static String _$text(DescriptionConfiguration v) => v.text;
  static const Field<DescriptionConfiguration, String> _f$text =
      Field('text', _$text);

  @override
  final MappableFields<DescriptionConfiguration> fields = const {
    #condition: _f$condition,
    #text: _f$text,
  };
  @override
  final bool ignoreNull = true;

  static DescriptionConfiguration _instantiate(DecodingData data) {
    return DescriptionConfiguration(
        condition: data.dec(_f$condition), text: data.dec(_f$text));
  }

  @override
  final Function instantiate = _instantiate;

  static DescriptionConfiguration fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<DescriptionConfiguration>(map);
  }

  static DescriptionConfiguration fromJson(String json) {
    return ensureInitialized().decodeJson<DescriptionConfiguration>(json);
  }
}

mixin DescriptionConfigurationMappable {
  String toJson() {
    return DescriptionConfigurationMapper.ensureInitialized()
        .encodeJson<DescriptionConfiguration>(this as DescriptionConfiguration);
  }

  Map<String, dynamic> toMap() {
    return DescriptionConfigurationMapper.ensureInitialized()
        .encodeMap<DescriptionConfiguration>(this as DescriptionConfiguration);
  }

  DescriptionConfigurationCopyWith<DescriptionConfiguration,
          DescriptionConfiguration, DescriptionConfiguration>
      get copyWith => _DescriptionConfigurationCopyWithImpl(
          this as DescriptionConfiguration, $identity, $identity);
  @override
  String toString() {
    return DescriptionConfigurationMapper.ensureInitialized()
        .stringifyValue(this as DescriptionConfiguration);
  }

  @override
  bool operator ==(Object other) {
    return DescriptionConfigurationMapper.ensureInitialized()
        .equalsValue(this as DescriptionConfiguration, other);
  }

  @override
  int get hashCode {
    return DescriptionConfigurationMapper.ensureInitialized()
        .hashValue(this as DescriptionConfiguration);
  }
}

extension DescriptionConfigurationValueCopy<$R, $Out>
    on ObjectCopyWith<$R, DescriptionConfiguration, $Out> {
  DescriptionConfigurationCopyWith<$R, DescriptionConfiguration, $Out>
      get $asDescriptionConfiguration => $base
          .as((v, t, t2) => _DescriptionConfigurationCopyWithImpl(v, t, t2));
}

abstract class DescriptionConfigurationCopyWith<
    $R,
    $In extends DescriptionConfiguration,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({Condition? condition, String? text});
  DescriptionConfigurationCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _DescriptionConfigurationCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, DescriptionConfiguration, $Out>
    implements
        DescriptionConfigurationCopyWith<$R, DescriptionConfiguration, $Out> {
  _DescriptionConfigurationCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<DescriptionConfiguration> $mapper =
      DescriptionConfigurationMapper.ensureInitialized();
  @override
  $R call({Object? condition = $none, String? text}) =>
      $apply(FieldCopyWithData({
        if (condition != $none) #condition: condition,
        if (text != null) #text: text
      }));
  @override
  DescriptionConfiguration $make(CopyWithData data) => DescriptionConfiguration(
      condition: data.get(#condition, or: $value.condition),
      text: data.get(#text, or: $value.text));

  @override
  DescriptionConfigurationCopyWith<$R2, DescriptionConfiguration, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _DescriptionConfigurationCopyWithImpl($value, $cast, t);
}
