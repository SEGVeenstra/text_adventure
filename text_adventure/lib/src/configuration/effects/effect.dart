import 'package:dart_mappable/dart_mappable.dart';
import 'package:text_adventure/text_adventure.dart';

part 'effect.mapper.dart';

@MappableClass(discriminatorKey: 'type')
abstract class Effect with EffectMappable {
  void apply(TextAdventureSession session);

  static final fromMap = EffectMapper.fromMap;
  static final fromJson = EffectMapper.fromJson;
}
