import 'package:flutter/material.dart';
import '../models/scan_record.dart';
import '../services/mock_service.dart';

class HistoryViewModel extends ChangeNotifier {
  List<ScanRecord> _history = [];

  List<ScanRecord> get history => _history;

  HistoryViewModel() {
    loadHistory();
  }

  void loadHistory() {
    // TODO: Backend integration to get all scans
    _history = MockService.getRecentScans(); // reuse mock
    notifyListeners();
  }
}