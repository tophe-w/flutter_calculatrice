import 'package:flutter/foundation.dart';

class CalculationHistory with ChangeNotifier {
  final List<String> _addition = [];
  final List<String> _soustraction = [];
  final List<String> _multiplication = [];
  final List<String> _division = [];

  List<String> get addition => _addition;
  List<String> get soustraction => _soustraction;
  List<String> get multiplication => _multiplication;
  List<String> get division => _division;

  void addAddition(String calculation) {
    _addition.add(calculation);
    notifyListeners();
  }

  void addSoustraction(String calculation) {
    _soustraction.add(calculation);
    notifyListeners();
  }

  void addMultiplication(String calculation) {
    _multiplication.add(calculation);
    notifyListeners();
  }

  void addDivision(String calculation) {
    _division.add(calculation);
    notifyListeners();
  }
}
