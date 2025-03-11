// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'condition.dart';

class ConditionMapper extends ClassMapperBase<Condition> {
  ConditionMapper._();

  static ConditionMapper? _instance;
  static ConditionMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ConditionMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Condition';

  @override
  final MappableFields<Condition> fields = const {};
  @override
  final bool ignoreNull = true;

  static Condition _instantiate(DecodingData data) {
    throw MapperException.missingConstructor('Condition');
  }

  @override
  final Function instantiate = _instantiate;

  static Condition fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Condition>(map);
  }

  static Condition fromJson(String json) {
    return ensureInitialized().decodeJson<Condition>(json);
  }
}

mixin ConditionMappable {
  String toJson();
  Map<String, dynamic> toMap();
  ConditionCopyWith<Condition, Condition, Condition> get copyWith;
}

abstract class ConditionCopyWith<$R, $In extends Condition, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call();
  ConditionCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}
