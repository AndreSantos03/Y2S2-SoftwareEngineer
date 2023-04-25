import 'package:flutter/material.dart';

class LanguageSelectionModel extends ChangeNotifier {
  bool _isOpen = false;
  final List<String> _selectedLanguages = [];
  String _selectedRemote = '';

  Color squaresColor = const Color.fromRGBO(102, 152, 173, 1);

  bool get isOpen => _isOpen;
  List<String> get selectedLanguages => _selectedLanguages;
  String get selectedRemote => _selectedRemote;

  void toggleIsOpen() {
    _isOpen = !_isOpen;
    notifyListeners();
  }

  void toggleLanguage(String language) {
    if (_selectedLanguages.contains(language)) {
      _selectedLanguages.remove(language);
    } else {
      _selectedLanguages.add(language);
    }
    // print("Selected languages: $_selectedLanguages");
    notifyListeners();
  }

  void toggleRemote(bool value) {
    _selectedRemote = value ? 'Sim' : '';

    // print("Selected remote: $_selectedRemote");
    notifyListeners();
  }
}
