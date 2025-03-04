// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'text_adventure_progress.dart';

class TextAdventureProgressMapper
    extends ClassMapperBase<TextAdventureProgress> {
  TextAdventureProgressMapper._();

  static TextAdventureProgressMapper? _instance;
  static TextAdventureProgressMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TextAdventureProgressMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'TextAdventureProgress';

  static String? _$_currentLocationId(TextAdventureProgress v) =>
      v._currentLocationId;
  static const Field<TextAdventureProgress, String> _f$_currentLocationId =
      Field('_currentLocationId', _$_currentLocationId,
          key: r'location', opt: true);
  static Map<String, int> _$inventory(TextAdventureProgress v) => v.inventory;
  static const Field<TextAdventureProgress, Map<String, int>> _f$inventory =
      Field('inventory', _$inventory, opt: true);
  static Map<String, dynamic> _$variables(TextAdventureProgress v) =>
      v.variables;
  static const Field<TextAdventureProgress, Map<String, dynamic>> _f$variables =
      Field('variables', _$variables, opt: true);

  @override
  final MappableFields<TextAdventureProgress> fields = const {
    #_currentLocationId: _f$_currentLocationId,
    #inventory: _f$inventory,
    #variables: _f$variables,
  };

  static TextAdventureProgress _instantiate(DecodingData data) {
    return TextAdventureProgress(
        currentLocationId: data.dec(_f$_currentLocationId),
        inventory: data.dec(_f$inventory),
        variables: data.dec(_f$variables));
  }

  @override
  final Function instantiate = _instantiate;

  static TextAdventureProgress fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<TextAdventureProgress>(map);
  }

  static TextAdventureProgress fromJson(String json) {
    return ensureInitialized().decodeJson<TextAdventureProgress>(json);
  }
}

mixin TextAdventureProgressMappable {
  String toJson() {
    return TextAdventureProgressMapper.ensureInitialized()
        .encodeJson<TextAdventureProgress>(this as TextAdventureProgress);
  }

  Map<String, dynamic> toMap() {
    return TextAdventureProgressMapper.ensureInitialized()
        .encodeMap<TextAdventureProgress>(this as TextAdventureProgress);
  }

  TextAdventureProgressCopyWith<TextAdventureProgress, TextAdventureProgress,
          TextAdventureProgress>
      get copyWith => _TextAdventureProgressCopyWithImpl(
          this as TextAdventureProgress, $identity, $identity);
  @override
  String toString() {
    return TextAdventureProgressMapper.ensureInitialized()
        .stringifyValue(this as TextAdventureProgress);
  }

  @override
  bool operator ==(Object other) {
    return TextAdventureProgressMapper.ensureInitialized()
        .equalsValue(this as TextAdventureProgress, other);
  }

  @override
  int get hashCode {
    return TextAdventureProgressMapper.ensureInitialized()
        .hashValue(this as TextAdventureProgress);
  }
}

extension TextAdventureProgressValueCopy<$R, $Out>
    on ObjectCopyWith<$R, TextAdventureProgress, $Out> {
  TextAdventureProgressCopyWith<$R, TextAdventureProgress, $Out>
      get $asTextAdventureProgress =>
          $base.as((v, t, t2) => _TextAdventureProgressCopyWithImpl(v, t, t2));
}

abstract class TextAdventureProgressCopyWith<
    $R,
    $In extends TextAdventureProgress,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  MapCopyWith<$R, String, int, ObjectCopyWith<$R, int, int>> get inventory;
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>
      get variables;
  $R call(
      {String? currentLocationId,
      Map<String, int>? inventory,
      Map<String, dynamic>? variables});
  TextAdventureProgressCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _TextAdventureProgressCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, TextAdventureProgress, $Out>
    implements TextAdventureProgressCopyWith<$R, TextAdventureProgress, $Out> {
  _TextAdventureProgressCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TextAdventureProgress> $mapper =
      TextAdventureProgressMapper.ensureInitialized();
  @override
  MapCopyWith<$R, String, int, ObjectCopyWith<$R, int, int>> get inventory =>
      MapCopyWith($value.inventory, (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(inventory: v));
  @override
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>
      get variables => MapCopyWith($value.variables,
          (v, t) => ObjectCopyWith(v, $identity, t), (v) => call(variables: v));
  @override
  $R call(
          {Object? currentLocationId = $none,
          Object? inventory = $none,
          Object? variables = $none}) =>
      $apply(FieldCopyWithData({
        if (currentLocationId != $none) #currentLocationId: currentLocationId,
        if (inventory != $none) #inventory: inventory,
        if (variables != $none) #variables: variables
      }));
  @override
  TextAdventureProgress $make(CopyWithData data) => TextAdventureProgress(
      currentLocationId:
          data.get(#currentLocationId, or: $value._currentLocationId),
      inventory: data.get(#inventory, or: $value.inventory),
      variables: data.get(#variables, or: $value.variables));

  @override
  TextAdventureProgressCopyWith<$R2, TextAdventureProgress, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _TextAdventureProgressCopyWithImpl($value, $cast, t);
}
