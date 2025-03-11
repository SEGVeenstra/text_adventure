import 'package:dart_mappable/dart_mappable.dart';
import 'package:text_adventure/src/exceptions/navigation_exception.dart';
import 'package:text_adventure/text_adventure.dart';

part 'navigation_effect.mapper.dart';

@MappableClass(discriminatorValue: 'navigation')
class NavigationEffect extends Effect with NavigationEffectMappable {
  NavigationEffect(this.location);

  static final fromMap = NavigationEffectMapper.fromMap;
  static final fromJson = NavigationEffectMapper.fromJson;

  @MappableField(key: 'location')
  final String location;

  @override
  void apply(TextAdventureSession session) {
    final isValidLocation =
        session.game.locations.map((e) => e.id).contains(location);

    if (!isValidLocation) throw NavigationException(locationId: location);

    session.progress.updateLocation(location);
  }
}
