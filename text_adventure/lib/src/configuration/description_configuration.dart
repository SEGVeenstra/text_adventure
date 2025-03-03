import 'package:text_adventure/src/configuration/conditions/condition.dart';
import 'package:text_adventure/src/description.dart';

class DescriptionConfiguration implements Description {
  DescriptionConfiguration({
    this.condition,
    required this.text,
  });

  final Condition? condition;
  @override
  final String text;
}
