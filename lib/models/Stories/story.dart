import 'package:flutter/foundation.dart';

abstract class Story {
  final String id;
  final String userId;
  final DateTime creationDate;

  Story(
      {@required this.id, @required this.userId, @required this.creationDate});
}
