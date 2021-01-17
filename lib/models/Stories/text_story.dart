import 'story.dart';

class TextStory extends Story {
  TextStory(String id, String userId, DateTime creationDate, this._text)
      : super(id: id, userId: userId, creationDate: creationDate);

  TextStory.fromFirebase(String userId, document)
      : this._text = document.data()['text'],
        super(
            id: document.id,
            userId: userId,
            creationDate: document.data()['creationDate']);

  String _text;

  String get text => _text;
}
