import 'package:plant_identifier/models/plant.dart';

class ScanRecord {
  final String id;
  final DateTime date;
  final Plant plant;

  ScanRecord({required this.id, required this.date, required this.plant});
}