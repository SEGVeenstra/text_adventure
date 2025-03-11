// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'effect.dart';

class EffectMapper extends ClassMapperBase<Effect> {
  EffectMapper._();

  static EffectMapper? _instance;
  static EffectMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = EffectMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Effect';

  @override
  final MappableFields<Effect> fields = const {};
  @override
  final bool ignoreNull = true;

  static Effect _instantiate(DecodingData data) {
    throw MapperException.missingConstructor('Effect');
  }

  @override
  final Function instantiate = _instantiate;

  static Effect fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Effect>(map);
  }

  static Effect fromJson(String json) {
    return ensureInitialized().decodeJson<Effect>(json);
  }
}

mixin EffectMappable {
  String toJson();
  Map<String, dynamic> toMap();
  EffectCopyWith<Effect, Effect, Effect> get copyWith;
}

abstract class EffectCopyWith<$R, $In extends Effect, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call();
  EffectCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}
