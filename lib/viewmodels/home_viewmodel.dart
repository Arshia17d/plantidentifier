import 'package:flutter/material.dart';
import '../models/scan_record.dart';
import '../services/mock_service.dart';

class HomeViewModel extends ChangeNotifier {
  List<ScanRecord> _recentScans = [];

  List<ScanRecord> get recentScans => _recentScans;

  HomeViewModel() {
    loadRecentScans();
  }

  void loadRecentScans() {
    // TODO: Replace with backend call to fetch user's scan history
    _recentScans = MockService.getRecentScans();
    notifyListeners();
  }
}