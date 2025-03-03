import 'package:text_adventure/text_adventure.dart';

class MultiEffect extends Effect {
  MultiEffect(this.effects);

  final List<Effect> effects;

  @override
  void apply(TextAdventureSession session) {
    for (final effect in effects) {
      effect.apply(session);
    }
  }
}
