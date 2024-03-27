import 'package:flutter/material.dart';

class AppState extends ChangeNotifier {
  // Example state variables
  String _username = '';
  final List<String> _cartItems = [];

  // Getter methods
  String get username => _username;
  List<String> get cartItems => _cartItems;

  // Method to update username
  void setUsername(String name) {
    _username = name;
    notifyListeners();
  }

  // Method to add item to cart
  void addItemToCart(String item) {
    _cartItems.add(item);
    notifyListeners();
  }

  // Other methods to modify state as needed
}
class ButtonColorState extends ChangeNotifier {
  bool _isConditionMet = false;

  bool get isConditionMet => _isConditionMet;

  void toggleCondition() {
    _isConditionMet = !_isConditionMet;
    notifyListeners(); // Notify listeners that state has changed
  }
}
