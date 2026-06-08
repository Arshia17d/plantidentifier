// lib/viewmodels/auth_viewmodel.dart
import 'package:flutter/material.dart';

class AuthViewModel extends ChangeNotifier {
  bool _isLoggedIn = false;
  String? _userName;

  bool get isLoggedIn => _isLoggedIn;
  String? get userName => _userName;

  Future<void> login(String email, String password) async {
    // TODO: Implement mock login (no backend)
    // Simulate network delay
    await Future.delayed(const Duration(seconds: 1));
    _isLoggedIn = true;
    _userName = 'کاربر آزمایشی';
    notifyListeners();
  }

  Future<void> register(String name, String email, String password) async {
    // TODO: Implement mock registration
    await Future.delayed(const Duration(seconds: 1));
    _isLoggedIn = true;
    _userName = name;
    notifyListeners();
  }

  void logout() {
    // TODO: Implement logout
    _isLoggedIn = false;
    _userName = null;
    notifyListeners();
  }
}