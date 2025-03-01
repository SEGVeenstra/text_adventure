import 'package:text_adventure/text_adventure.dart';

abstract class Condition {
  const Condition();

  bool evaluate(TextAdventureSession session);
}
