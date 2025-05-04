import 'package:flutter/material.dart';

class MainPageProvider extends ChangeNotifier {
  String _currentPage = "Dashboard";
  String get currentPage => _currentPage;
  Future<void> setPage(String pageName) async {
    _currentPage = pageName;
    notifyListeners();
  }
}
