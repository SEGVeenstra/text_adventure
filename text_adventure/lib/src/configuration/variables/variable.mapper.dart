// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'variable.dart';

class VariableMapper extends ClassMapperBase<Variable> {
  VariableMapper._();

  static VariableMapper? _instance;
  static VariableMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = VariableMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Variable';
  @override
  Function get typeFactory => <T>(f) => f<Variable<T>>();

  static String _$id(Variable v) => v.id;
  static const Field<Variable, String> _f$id = Field('id', _$id);
  static dynamic _$initialValue(Variable v) => v.initialValue;
  static dynamic _arg$initialValue<T>(f) => f<T>();
  static const Field<Variable, dynamic> _f$initialValue =
      Field('initialValue', _$initialValue, arg: _arg$initialValue);

  @override
  final MappableFields<Variable> fields = const {
    #id: _f$id,
    #initialValue: _f$initialValue,
  };
  @override
  final bool ignoreNull = true;

  static Variable<T> _instantiate<T>(DecodingData data) {
    throw MapperException.missingConstructor('Variable');
  }

  @override
  final Function instantiate = _instantiate;

  static Variable<T> fromMap<T>(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Variable<T>>(map);
  }

  static Variable<T> fromJson<T>(String json) {
    return ensureInitialized().decodeJson<Variable<T>>(json);
  }
}

mixin VariableMappable<T> {
  String toJson();
  Map<String, dynamic> toMap();
  VariableCopyWith<Variable<T>, Variable<T>, Variable<T>, T> get copyWith;
}

abstract class VariableCopyWith<$R, $In extends Variable<T>, $Out, T>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? id, T? initialValue});
  VariableCopyWith<$R2, $In, $Out2, T> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}
