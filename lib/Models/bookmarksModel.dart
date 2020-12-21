import 'package:flutter/material.dart';

class BookmarksModel extends ChangeNotifier {
  List<String> _bookmarks = [];

  List<String> get bookmarks => _bookmarks;

  add(String entry) {
    _bookmarks.add(entry);
    notifyListeners();
  }

  remove(String entry) {
    _bookmarks.removeWhere((el) => el == entry);
    notifyListeners();
  }

}
