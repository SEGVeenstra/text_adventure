import 'package:text_adventure/text_adventure.dart';

class MessageEffect extends Effect {
  MessageEffect(this.message);

  final String message;

  @override
  void apply(TextAdventureSession session) {
    session.emitEvent(MessageEvent(message));
  }
}
