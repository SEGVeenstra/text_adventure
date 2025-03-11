// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'navigation_effect.dart';

class NavigationEffectMapper extends SubClassMapperBase<NavigationEffect> {
  NavigationEffectMapper._();

  static NavigationEffectMapper? _instance;
  static NavigationEffectMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = NavigationEffectMapper._());
      EffectMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'NavigationEffect';

  static String _$location(NavigationEffect v) => v.location;
  static const Field<NavigationEffect, String> _f$location =
      Field('location', _$location);

  @override
  final MappableFields<NavigationEffect> fields = const {
    #location: _f$location,
  };
  @override
  final bool ignoreNull = true;

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'navigation';
  @override
  late final ClassMapperBase superMapper = EffectMapper.ensureInitialized();

  static NavigationEffect _instantiate(DecodingData data) {
    return NavigationEffect(data.dec(_f$location));
  }

  @override
  final Function instantiate = _instantiate;

  static NavigationEffect fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<NavigationEffect>(map);
  }

  static NavigationEffect fromJson(String json) {
    return ensureInitialized().decodeJson<NavigationEffect>(json);
  }
}

mixin NavigationEffectMappable {
  String toJson() {
    return NavigationEffectMapper.ensureInitialized()
        .encodeJson<NavigationEffect>(this as NavigationEffect);
  }

  Map<String, dynamic> toMap() {
    return NavigationEffectMapper.ensureInitialized()
        .encodeMap<NavigationEffect>(this as NavigationEffect);
  }

  NavigationEffectCopyWith<NavigationEffect, NavigationEffect, NavigationEffect>
      get copyWith => _NavigationEffectCopyWithImpl(
          this as NavigationEffect, $identity, $identity);
  @override
  String toString() {
    return NavigationEffectMapper.ensureInitialized()
        .stringifyValue(this as NavigationEffect);
  }

  @override
  bool operator ==(Object other) {
    return NavigationEffectMapper.ensureInitialized()
        .equalsValue(this as NavigationEffect, other);
  }

  @override
  int get hashCode {
    return NavigationEffectMapper.ensureInitialized()
        .hashValue(this as NavigationEffect);
  }
}

extension NavigationEffectValueCopy<$R, $Out>
    on ObjectCopyWith<$R, NavigationEffect, $Out> {
  NavigationEffectCopyWith<$R, NavigationEffect, $Out>
      get $asNavigationEffect =>
          $base.as((v, t, t2) => _NavigationEffectCopyWithImpl(v, t, t2));
}

abstract class NavigationEffectCopyWith<$R, $In extends NavigationEffect, $Out>
    implements EffectCopyWith<$R, $In, $Out> {
  @override
  $R call({String? location});
  NavigationEffectCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _NavigationEffectCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, NavigationEffect, $Out>
    implements NavigationEffectCopyWith<$R, NavigationEffect, $Out> {
  _NavigationEffectCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<NavigationEffect> $mapper =
      NavigationEffectMapper.ensureInitialized();
  @override
  $R call({String? location}) =>
      $apply(FieldCopyWithData({if (location != null) #location: location}));
  @override
  NavigationEffect $make(CopyWithData data) =>
      NavigationEffect(data.get(#location, or: $value.location));

  @override
  NavigationEffectCopyWith<$R2, NavigationEffect, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _NavigationEffectCopyWithImpl($value, $cast, t);
}
