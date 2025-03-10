import 'package:text_adventure/src/events/text_adventure_event.dart';

class MessageEvent extends TextAdventureEvent {
  const MessageEvent(this.message);

  final String message;
}
