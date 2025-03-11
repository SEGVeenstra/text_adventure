// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'message_effect.dart';

class MessageEffectMapper extends SubClassMapperBase<MessageEffect> {
  MessageEffectMapper._();

  static MessageEffectMapper? _instance;
  static MessageEffectMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MessageEffectMapper._());
      EffectMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'MessageEffect';

  static String _$message(MessageEffect v) => v.message;
  static const Field<MessageEffect, String> _f$message =
      Field('message', _$message);

  @override
  final MappableFields<MessageEffect> fields = const {
    #message: _f$message,
  };
  @override
  final bool ignoreNull = true;

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'message';
  @override
  late final ClassMapperBase superMapper = EffectMapper.ensureInitialized();

  static MessageEffect _instantiate(DecodingData data) {
    return MessageEffect(data.dec(_f$message));
  }

  @override
  final Function instantiate = _instantiate;

  static MessageEffect fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MessageEffect>(map);
  }

  static MessageEffect fromJson(String json) {
    return ensureInitialized().decodeJson<MessageEffect>(json);
  }
}

mixin MessageEffectMappable {
  String toJson() {
    return MessageEffectMapper.ensureInitialized()
        .encodeJson<MessageEffect>(this as MessageEffect);
  }

  Map<String, dynamic> toMap() {
    return MessageEffectMapper.ensureInitialized()
        .encodeMap<MessageEffect>(this as MessageEffect);
  }

  MessageEffectCopyWith<MessageEffect, MessageEffect, MessageEffect>
      get copyWith => _MessageEffectCopyWithImpl(
          this as MessageEffect, $identity, $identity);
  @override
  String toString() {
    return MessageEffectMapper.ensureInitialized()
        .stringifyValue(this as MessageEffect);
  }

  @override
  bool operator ==(Object other) {
    return MessageEffectMapper.ensureInitialized()
        .equalsValue(this as MessageEffect, other);
  }

  @override
  int get hashCode {
    return MessageEffectMapper.ensureInitialized()
        .hashValue(this as MessageEffect);
  }
}

extension MessageEffectValueCopy<$R, $Out>
    on ObjectCopyWith<$R, MessageEffect, $Out> {
  MessageEffectCopyWith<$R, MessageEffect, $Out> get $asMessageEffect =>
      $base.as((v, t, t2) => _MessageEffectCopyWithImpl(v, t, t2));
}

abstract class MessageEffectCopyWith<$R, $In extends MessageEffect, $Out>
    implements EffectCopyWith<$R, $In, $Out> {
  @override
  $R call({String? message});
  MessageEffectCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _MessageEffectCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MessageEffect, $Out>
    implements MessageEffectCopyWith<$R, MessageEffect, $Out> {
  _MessageEffectCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MessageEffect> $mapper =
      MessageEffectMapper.ensureInitialized();
  @override
  $R call({String? message}) =>
      $apply(FieldCopyWithData({if (message != null) #message: message}));
  @override
  MessageEffect $make(CopyWithData data) =>
      MessageEffect(data.get(#message, or: $value.message));

  @override
  MessageEffectCopyWith<$R2, MessageEffect, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _MessageEffectCopyWithImpl($value, $cast, t);
}
