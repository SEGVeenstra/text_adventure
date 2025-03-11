import 'package:dart_mappable/dart_mappable.dart';
import 'package:text_adventure/text_adventure.dart';

part 'message_effect.mapper.dart';

@MappableClass(discriminatorValue: 'message')
class MessageEffect extends Effect with MessageEffectMappable {
  MessageEffect(this.message);

  static final fromMap = MessageEffectMapper.fromMap;
  static final fromJson = MessageEffectMapper.fromJson;

  @MappableField(key: 'message')
  final String message;

  @override
  void apply(TextAdventureSession session) {
    session.emitEvent(MessageEvent(message));
  }
}
