// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'action_configuration.dart';

class ActionConfigurationMapper extends ClassMapperBase<ActionConfiguration> {
  ActionConfigurationMapper._();

  static ActionConfigurationMapper? _instance;
  static ActionConfigurationMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ActionConfigurationMapper._());
      EffectMapper.ensureInitialized();
      ConditionMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ActionConfiguration';

  static String _$label(ActionConfiguration v) => v.label;
  static const Field<ActionConfiguration, String> _f$label =
      Field('label', _$label);
  static List<Effect> _$effect(ActionConfiguration v) => v.effect;
  static const Field<ActionConfiguration, List<Effect>> _f$effect =
      Field('effect', _$effect);
  static ActionType _$type(ActionConfiguration v) => v.type;
  static const Field<ActionConfiguration, ActionType> _f$type =
      Field('type', _$type);
  static Condition? _$condition(ActionConfiguration v) => v.condition;
  static const Field<ActionConfiguration, Condition> _f$condition =
      Field('condition', _$condition, opt: true);

  @override
  final MappableFields<ActionConfiguration> fields = const {
    #label: _f$label,
    #effect: _f$effect,
    #type: _f$type,
    #condition: _f$condition,
  };
  @override
  final bool ignoreNull = true;

  static ActionConfiguration _instantiate(DecodingData data) {
    return ActionConfiguration(
        label: data.dec(_f$label),
        effect: data.dec(_f$effect),
        type: data.dec(_f$type),
        condition: data.dec(_f$condition));
  }

  @override
  final Function instantiate = _instantiate;

  static ActionConfiguration fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ActionConfiguration>(map);
  }

  static ActionConfiguration fromJson(String json) {
    return ensureInitialized().decodeJson<ActionConfiguration>(json);
  }
}

mixin ActionConfigurationMappable {
  String toJson() {
    return ActionConfigurationMapper.ensureInitialized()
        .encodeJson<ActionConfiguration>(this as ActionConfiguration);
  }

  Map<String, dynamic> toMap() {
    return ActionConfigurationMapper.ensureInitialized()
        .encodeMap<ActionConfiguration>(this as ActionConfiguration);
  }

  ActionConfigurationCopyWith<ActionConfiguration, ActionConfiguration,
          ActionConfiguration>
      get copyWith => _ActionConfigurationCopyWithImpl(
          this as ActionConfiguration, $identity, $identity);
  @override
  String toString() {
    return ActionConfigurationMapper.ensureInitialized()
        .stringifyValue(this as ActionConfiguration);
  }

  @override
  bool operator ==(Object other) {
    return ActionConfigurationMapper.ensureInitialized()
        .equalsValue(this as ActionConfiguration, other);
  }

  @override
  int get hashCode {
    return ActionConfigurationMapper.ensureInitialized()
        .hashValue(this as ActionConfiguration);
  }
}

extension ActionConfigurationValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ActionConfiguration, $Out> {
  ActionConfigurationCopyWith<$R, ActionConfiguration, $Out>
      get $asActionConfiguration =>
          $base.as((v, t, t2) => _ActionConfigurationCopyWithImpl(v, t, t2));
}

abstract class ActionConfigurationCopyWith<$R, $In extends ActionConfiguration,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, Effect, ObjectCopyWith<$R, Effect, Effect>> get effect;
  $R call(
      {String? label,
      List<Effect>? effect,
      ActionType? type,
      Condition? condition});
  ActionConfigurationCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ActionConfigurationCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ActionConfiguration, $Out>
    implements ActionConfigurationCopyWith<$R, ActionConfiguration, $Out> {
  _ActionConfigurationCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ActionConfiguration> $mapper =
      ActionConfigurationMapper.ensureInitialized();
  @override
  ListCopyWith<$R, Effect, ObjectCopyWith<$R, Effect, Effect>> get effect =>
      ListCopyWith($value.effect, (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(effect: v));
  @override
  $R call(
          {String? label,
          List<Effect>? effect,
          ActionType? type,
          Object? condition = $none}) =>
      $apply(FieldCopyWithData({
        if (label != null) #label: label,
        if (effect != null) #effect: effect,
        if (type != null) #type: type,
        if (condition != $none) #condition: condition
      }));
  @override
  ActionConfiguration $make(CopyWithData data) => ActionConfiguration(
      label: data.get(#label, or: $value.label),
      effect: data.get(#effect, or: $value.effect),
      type: data.get(#type, or: $value.type),
      condition: data.get(#condition, or: $value.condition));

  @override
  ActionConfigurationCopyWith<$R2, ActionConfiguration, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _ActionConfigurationCopyWithImpl($value, $cast, t);
}
