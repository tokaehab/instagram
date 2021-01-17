import 'story.dart';

class ImageStory extends Story {
  ImageStory(String id, String userId, DateTime creationDate, this._url)
      : super(id: id, userId: userId, creationDate: creationDate);

  ImageStory.fromFirebase(String userId, document)
      : this._url = document.data()['url'],
        super(
            id: document.id,
            userId: userId,
            creationDate: document.data()['creationDate']);

  String _url;

  String get url => _url;
}
