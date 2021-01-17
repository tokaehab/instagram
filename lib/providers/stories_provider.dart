import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:instagram/models/Stories/image_story.dart';
import 'package:instagram/models/Stories/story.dart';
import 'package:intl/intl.dart';
import '../models/Exceptions/upload_file_exception.dart';

class StoriesProvider with ChangeNotifier {
  List<Story> _myStories;

  List<Story> get myStories => [..._myStories];

  Future<String> uploadFile(File file) async {
    try {
      final id = FirebaseAuth.instance.currentUser.uid;
      final now = DateFormat('ddMMyyyHHmmss').format(DateTime.now());
      final ref = FirebaseStorage.instance
          .ref('$id/stories/$now/${file.path.split('/').last}');
      await ref.putFile(file);
      return await ref.getDownloadURL();
    } on SocketException catch (e) {
      throw SocketException('');
    } catch (e) {
      throw UploadFileException('');
    }
  }

  Future<String> addImageStory(File image) async {
    try {
      String url = await uploadFile(image);
      final id = FirebaseAuth.instance.currentUser.uid;
      final now = DateTime.now();
      final doc = await FirebaseFirestore.instance
          .collection('users')
          .doc(id)
          .collection('stories')
          .add({
        'url': url,
        'creationDate': now.toIso8601String(),
      });
      myStories.add(ImageStory(doc.id, id, now, url));
      notifyListeners();
      return null;
    } on SocketException catch (e) {
      return 'Network problem, please try again after fixing your network.';
    } catch (e) {
      return 'Couldn\'t add your story right now, try again later and if the problem persists please send us an issue.';
    }
  }
}
